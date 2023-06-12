package com.example.projet.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "configuration")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Configuration {

    @Id //cle primaire
    @GeneratedValue(strategy = GenerationType.IDENTITY) //genere automatiquement par le SGBD
    @Column(name="conf_id")
    private int confId ;

    @Column(nullable = false)
    private int quantity;

    @Column(nullable = false, length = 100)
    private String unite;


    @JsonIgnore
    @ManyToOne()
    @JoinColumn(name = "product_id")
    Product product;


    //@JsonIgnore
    @ManyToOne()
    @JoinColumn(name = "comp_id")
    Component component;

}
