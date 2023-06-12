package com.example.projet.controller;

import com.example.projet.entity.Commande;
import com.example.projet.service.CommandeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class CommandeController {

    @Autowired
    private CommandeService commandeService;

    // Get all commande
    @GetMapping("/api/commandes/all")
    public List<Commande> getAllCommande() {
        return commandeService.getAllCommande();
    }

    // Get an commande by ID
    /*@GetMapping("/{id}")
    public Commande getOrderById(@PathVariable int id) {
        return commandeService.getOrderById(id);
    }*/

    // add new commande
    @PostMapping("/api/commandes/add")
    public void addCommande(@RequestBody Commande commande) {
         commandeService.saveOrUpdateCommande(commande);
    }

    // Update an order
    @PutMapping("/api/commandes/update")
    public void updateCommand( @RequestBody Commande commande) {
         commandeService.saveOrUpdateCommande( commande);
    }

    // Delete an order
    @DeleteMapping("/api/commandes/delete/{id}")
    public void deleteCommand(@PathVariable int id) {
        commandeService.deleteCommandeById(id);
    }

}

