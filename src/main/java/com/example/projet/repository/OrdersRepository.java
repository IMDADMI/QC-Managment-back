package com.example.projet.repository;

import com.example.projet.entity.Ordere;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrdersRepository extends JpaRepository<Ordere, Integer> {
}
