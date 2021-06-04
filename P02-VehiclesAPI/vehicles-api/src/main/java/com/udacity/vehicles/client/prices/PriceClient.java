package com.udacity.vehicles.client.prices;

import com.udacity.vehicles.domain.car.Car;
import org.modelmapper.ModelMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Mono;

import java.time.Duration;
import java.util.Objects;

/**
 * Implements a class to interface with the Pricing Client for price data.
 */
@Component
public class PriceClient {

    private static final Logger log = LoggerFactory.getLogger(PriceClient.class);

    private final WebClient.Builder webClientBuilder;
    @Value("${pricing.endpoint}")
    private String pricingEndpoint;
    private final ModelMapper mapper;

    public PriceClient(WebClient.Builder pricing, ModelMapper mapper) {
        this.webClientBuilder = pricing;
        this.mapper = mapper;
    }

    /**
     * Gets a vehicle price from the pricing client, given vehicle ID.
     *
     * @param vehicleId ID number of the vehicle for which to get the price
     * @return Currency and price of the requested vehicle,
     *         error message that the vehicle ID is invalid, or note that the
     *         service is down.
     */
    public String getPrice(Long vehicleId) {

        try {
            // Lookup service by application name instead of hostname:port to support MSA
            Price price = webClientBuilder
                    .build()
                    .get()
                    .uri(pricingEndpoint + "/prices/{id}", vehicleId)
                    .retrieve()
                    .bodyToMono(Price.class)
                    .retry()
                    .cache(Duration.ofMillis(1000))
                    .block();

            return String.format("%s, %s!", price.getCurrency(), price.getPrice());



//            mono.subscribe(car::setPrice);
//            mono.subscribe(carPrice -> mapper.map(Objects.requireNonNull(carPrice), price));
//            car.setPrice(price);
//            return car;

        } catch (Exception e) {
            log.error("Unexpected error retrieving price for vehicle {}", vehicleId, e);
        }

        return "(consult price)";
    }
}