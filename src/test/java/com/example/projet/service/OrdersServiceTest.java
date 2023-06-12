package com.example.projet.service;

import com.example.projet.entity.Ordere;
import com.example.projet.repository.OrdersRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.sql.Date;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class OrdersServiceTest {

    @Mock
    private OrdersRepository ordersRepository;
    private OrdersService underTest;

    @BeforeEach
    void setUp() {
        underTest = new OrdersService(ordersRepository);
    }

    @Test
    void getAllOrders() {
        // given
        Ordere order1 = new Ordere(1, 5, 10.0, 0.5, new Date(System.currentTimeMillis()), null, null, null, null);
        Ordere order2 = new Ordere(2, 5, 10.0, 0.5, new Date(System.currentTimeMillis()), null, null, null, null);
        List<Ordere> orders = Arrays.asList(order1, order2);
        when(ordersRepository.findAll()).thenReturn(orders);

        // when
        List<Ordere> result = underTest.getAllOrders();

        // then
        assertThat(result).isEqualTo(orders);
        verify(ordersRepository).findAll();
    }

    @Test
    void addOrdere() {
        // given
        Ordere order = new Ordere(1, 5, 10.0, 0.5, new Date(System.currentTimeMillis()), null, null, null, null);

        // when
        underTest.addOrdere(order);

        // then
        verify(ordersRepository).save(order);
    }

    @Test
    void updateOrdere() {
        // given
        Ordere order = new Ordere(1, 5, 10.0, 0.5, new Date(System.currentTimeMillis()), null, null, null, null);

        // when
        underTest.updateOrdere(order);

        // then
        verify(ordersRepository).save(order);
    }

    @Test
    void deleteOrdereById() {
        // given
        int id = 1;
        doNothing().when(ordersRepository).deleteById(id);

        // when
        underTest.deleteOrdereById(id);

        // then
        verify(ordersRepository).deleteById(id);
    }
}
