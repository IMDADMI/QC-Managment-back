package com.example.projet.repository;

import com.example.projet.entity.Commande;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CommandeRepository extends JpaRepository<Commande, Integer> {
}
