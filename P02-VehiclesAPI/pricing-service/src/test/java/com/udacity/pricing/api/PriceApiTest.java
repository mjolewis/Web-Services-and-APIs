package com.udacity.pricing.api;

import com.udacity.pricing.domain.price.Price;
import com.udacity.pricing.domain.price.PriceRepository;
import org.junit.Before;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.math.BigDecimal;
import java.util.Collections;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.BDDMockito.given;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;

/**
 * Implements testing of the pricing service.
 */
@ExtendWith(SpringExtension.class)
@AutoConfigureMockMvc
@SpringBootTest
public class PriceApiTest {

    @MockBean
    private PriceRepository priceRepository;

    /**
     * Creates pre-requisites for testing, such as an example car.
     */
    @Before
    public void setup() {
        Price price = getPrice();
        given(priceRepository.save(any())).willReturn(price);
        given(priceRepository.findAll()).willReturn(Collections.singletonList(price));

        priceRepository.save(price);
    }

    @Test
    @DisplayName("Save price.")
    public void savePrice() {
        Price price = getPrice();
        priceRepository.save(price);

        verify(priceRepository, times(1)).save(price);

        assertAll(
                () -> assertEquals("USD", price.getCurrency(), "Currency is not USD"),
                () -> assertEquals(new BigDecimal(10000), price.getPrice(), "Price is incorrect"),
                () -> assertEquals(1L, price.getVehicleId(), "Price attached to wrong vehicle id")
        );
    }

    @Test
    @DisplayName("Delete price.")
    public void deletePrice() {
        Price price = getPrice();

        priceRepository.deleteById(1L);

        verify(priceRepository, times(1)).deleteById(1L);

        assertFalse(priceRepository.existsById(price.getId()), "Price still exists");
    }

    @Test
    @DisplayName("Find price by id.")
    public void findPriceById() {
        Price price = getPrice();

        priceRepository.findById(1L);

        verify(priceRepository, times(1)).findById(1L);

        assertEquals(1L, price.getId(), "Unable to find price by id");
    }

    private Price getPrice() {
        return new Price(1L, "USD", new BigDecimal(10000), 1L);
    }

}
