package com.example.projet.repository;

import com.example.projet.entity.Configuration;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ConfigurationRepository extends JpaRepository<Configuration, Integer> {
}
