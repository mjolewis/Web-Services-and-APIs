package com.udacity.vehicles.service;

import com.udacity.vehicles.client.maps.MapsClient;
import com.udacity.vehicles.client.prices.Price;
import com.udacity.vehicles.domain.Location;
import com.udacity.vehicles.domain.car.Car;
import com.udacity.vehicles.domain.car.CarRepository;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Mono;

/**
 * Implements the car service create, read, update or delete
 * information about vehicles, as well as gather related
 * location and price data when desired.
 */
@Service
public class CarService {

    private final CarRepository repository;

    private final WebClient.Builder webClientBuilder;
    @Value("${pricing.endpoint}")
    private String pricingEndpoint;

    private final MapsClient mapsClient;

    public CarService(CarRepository repository, WebClient.Builder pricing, MapsClient mapsClient) {
        this.repository = repository;
        this.webClientBuilder = pricing;
        this.mapsClient = mapsClient;
    }

    /**
     * Gathers a list of all vehicles
     *
     * @return a list of all vehicles in the CarRepository
     */
    public List<Car> list() {
        return repository.findAll();
    }

    /**
     * Gets car information by ID (or throws exception if non-existent)
     *
     * @param id the ID number of the car to gather information on
     * @return the requested car's information, including location and price
     */
    public Car findById(Long id) {

        // Lookup service by application name instead of hostname:port to support MSA
        Mono<String> mono = webClientBuilder
                .build()
                .get()
                .uri("http://price-service/prices/{id}", id)
                .retrieve().bodyToMono(Price.class)
                .map(priceData -> String.format("%s, %s!", priceData.getCurrency(), priceData.getPrice()));

        Car car = repository
                .findById(id)
                .orElseThrow(CarNotFoundException::new);

        mono.subscribe(car::setPrice);

        Location location = mapsClient.getAddress(car.getLocation());
        car.setLocation(location);

        return car;
    }

    /**
     * Either creates or updates a vehicle, based on prior existence of car
     *
     * @param car A car object, which can be either new or existing
     * @return the new/updated car is stored in the repository
     */
    public Car save(Car car) {
        if (car.getId() != null) {
            return repository.findById(car.getId())
                    .map(carToBeUpdated -> {
                        carToBeUpdated.setDetails(car.getDetails());
                        carToBeUpdated.setLocation(car.getLocation());
                        carToBeUpdated.setCondition(car.getCondition());
                        return repository.save(carToBeUpdated);
                    }).orElseThrow(CarNotFoundException::new);
        }

//        String price = priceClient.getPrice(car.getId());
//        car.setPrice(price);
        return repository.save(car);
    }

    /**
     * Deletes a given car by ID
     *
     * @param id the ID number of the car to delete
     */
    public void delete(Long id) {

        Optional<Optional<Car>> optionalCars = Optional.of(repository.findById(id));
        Optional<Car> optionalCar = optionalCars.get();

        if (optionalCar.isPresent()) {
            repository.delete(optionalCar.get());
        } else {
            throw new CarNotFoundException();
        }
    }
}
