package com.example.projet.controller;

import com.example.projet.entity.Ordere;
import com.example.projet.repository.OrdersRepository;
import com.example.projet.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
public class OrdersController {
    @Autowired
    private OrdersService ordersService;
    @GetMapping("/api/order/allOrder")
    public List<Ordere>getAllOrders(){
        return ordersService.getAllOrders();
    }

    @PostMapping("/api/order/addOrdere")
    public void addOrder(@RequestBody Ordere ordere) {
         ordersService.addOrdere(ordere);
    }

    @PutMapping ("/api/order/updateOrder")
    public void updateOrder(@RequestBody Ordere ordere) {
        ordersService.updateOrdere(ordere);
    }
    @DeleteMapping("/api/order/deleteOrder/{orderId}")
    public void deleteOrderById(@PathVariable int orderId) {
        ordersService.deleteOrdereById(orderId);
    }
}
