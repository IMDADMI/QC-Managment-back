package com.example.projet.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
@Entity
@Table(name = "component")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Component {

    @Id //cle primaire
    @GeneratedValue(strategy = GenerationType.IDENTITY) //genere automatiquement par le SGBD
    @Column(name = "comp_id")
    private int compId ;

    @Column(name = "comp_name",nullable = false, length = 100)
    private String compName;

    @Column(name = "comp_type",nullable = false, length = 100)
    private String compType;

    @Column(name = "comp_price",nullable = false)
    private double compPrice;

    @JsonIgnore
    @OneToMany(mappedBy = "component", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    List<Configuration> configuartionComp;
}
