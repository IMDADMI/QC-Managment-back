package com.example.projet.repository;

import com.example.projet.entity.Component;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ComponentRepository extends JpaRepository<Component, Integer> {
}
