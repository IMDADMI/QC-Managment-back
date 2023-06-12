package com.example.projet.controller;

import com.example.projet.entity.Bascket;
import com.example.projet.service.BascketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class BascketController {

    @Autowired
    private BascketService bascketService;

    // Get all baskets
    @GetMapping("/api/basckets/allBaskets")
    public List<Bascket> getAllBaskets() {
        return bascketService.getAllBascet();
    }

    // Get a basket by ID
    /*@GetMapping("/{id}")
    public Bascket getBasketById(@PathVariable int id) {
        return bascketService.getBasketById(id);
    }*/

    // Create a new basket
    @PostMapping("/api/bascket")
    public void createBasket(@RequestBody Bascket bascket) {
         bascketService.saveOrUpdateBascket(bascket);
    }

    // Update a basket
    @PutMapping("/api/basckets/updateBasckets")
    public void updateBasket( @RequestBody Bascket bascket) {
         bascketService.saveOrUpdateBascket( bascket);
    }

    // Delete a basket
    @DeleteMapping("/api/basckets/delete/{id}")
    public void deleteBasket(@PathVariable int id) {
        bascketService.deleteBascketById(id);
    }

}

