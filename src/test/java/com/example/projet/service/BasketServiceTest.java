package com.example.projet.service;

import com.example.projet.entity.Bascket;
import com.example.projet.repository.BascketRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.Arrays;
import java.util.List;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class BasketServiceTest {

    @Mock
    private BascketRepository  basketRepository;
    private BascketService  underTest;

    @BeforeEach
    void setUp() {
        underTest = new BascketService(basketRepository);
    }

    @Test
    void getAllBaskets() {
        // when
        underTest.getAllBascet();

        // then
        verify(basketRepository).findAll();
    }

    @Test
    void saveOrUpdateBasket() {
        // given
        Bascket basket = new Bascket(1, 100.0, null);

        // when
        underTest.saveOrUpdateBascket(basket);

        // then
        verify(basketRepository).save(basket);
    }

    @Test
    void deleteBasketById() {
        // given
        int basketId = 1;

        // when
        underTest.deleteBascketById(basketId);

        // then
        verify(basketRepository).deleteById(basketId);
    }

}
