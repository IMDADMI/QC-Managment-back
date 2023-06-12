package com.example.projet.service;
import com.example.projet.entity.Commande;
import com.example.projet.repository.CommandeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommandeService {

    private final CommandeRepository commandeRepository;

    public CommandeService(CommandeRepository commandeRepository) {
        this.commandeRepository = commandeRepository;
    }
    /*
    public CommandeService(CommandeRepository commandeRepository) {
        this.commandeRepository=commandeRepository;
    }*/

    public List<Commande> getAllCommande() {
        return commandeRepository.findAll();
    }

    public Commande saveOrUpdateCommande(Commande commande) {
        return commandeRepository.save(commande);
    }

    public void deleteCommandeById(int comdId) {
        commandeRepository.deleteById(comdId);
    }
}
