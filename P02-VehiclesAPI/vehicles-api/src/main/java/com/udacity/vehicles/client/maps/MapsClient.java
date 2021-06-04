package com.udacity.vehicles.client.maps;

import com.udacity.vehicles.client.prices.Price;
import com.udacity.vehicles.domain.Location;

import java.time.Duration;
import java.util.Objects;

import org.modelmapper.ModelMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Mono;

/**
 * Implements a class to interface with the Maps Client for location data.
 */
@Component
public class MapsClient {

    private static final Logger log = LoggerFactory.getLogger(MapsClient.class);

    private final WebClient.Builder webClientBuilder;
    @Value("${maps.endpoint}")
    private String mapsEndpoint;
    private final ModelMapper mapper;

    public MapsClient(WebClient.Builder mapping, ModelMapper mapper) {
        this.webClientBuilder = mapping;
        this.mapper = mapper;
    }

    /**
     * Gets an address from the Maps client, given latitude and longitude.
     *
     * @param location An object containing "lat" and "lon" of location
     * @return An updated location including street, city, state and zip,
     *         or an exception message noting the Maps service is down
     */
    public Location getAddress(Location location, Long id) {
        try {

            Address address = webClientBuilder
                    .build()
                    .get()
                    .uri(mapsEndpoint + "/addresses/{id}", id)
                    .retrieve()
                    .bodyToMono(Address.class)
                    .retry()
                    .cache(Duration.ofMillis(1000))
                    .block();

            mapper.map(Objects.requireNonNull(address), location);

            return location;
        } catch (Exception e) {
            log.warn("Map service is down");
            return location;
        }
    }
}
