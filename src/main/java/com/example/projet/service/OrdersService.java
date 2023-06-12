package com.example.projet.service;

import com.example.projet.entity.Ordere;
import com.example.projet.repository.OrdersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class OrdersService {
    private final OrdersRepository ordereRepository;

    public OrdersService(OrdersRepository ordereRepository) {
        this.ordereRepository = ordereRepository;
    }
    /*
    public OrdersService(OrdersRepository ordersRepository) {
        this.ordereRepository=ordersRepository;
    }
*/
    public List<Ordere> getAllOrders() {
        return ordereRepository.findAll();
    }

    public void addOrdere(Ordere ordere) {
        ordereRepository.save(ordere);
    }

    public void updateOrdere(Ordere ordere) {
        ordereRepository.save(ordere);
    }

    public void deleteOrdereById(int id) {
        ordereRepository.deleteById(id);
    }

}
