package com.example.projet.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.List;
@Entity
@Table(name = "product")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Product {

    @Id //cle primaire
    @GeneratedValue(strategy = GenerationType.IDENTITY) //genere automatiquement par le SGBD
    @Column(name="product_id")
    private int productId ;

    @Column(name="product_name", nullable = false, length = 100)
    private String productName;

    @Column(name="product_type", nullable = false, length = 100)
    private String productType;

    @Column(nullable = false, length = 100)
    private String brand;

    @Column(nullable = false, length = 100)
    private String model;

    @Column(nullable = false, length = 10000)
    private String description;

    @Column(nullable = false, length = 1000)
    private String image;

    @Column(name="product_price" ,nullable = false)
    private double productPrice;

    @Column(name="garrnty_perriode" , nullable = false)
    private String garrntyPerriode;

    @Column(nullable = false)
    private double weight;


    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    List<Configuration> configuartion;


    @JsonIgnore
    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    List<Ordere> orderes;

}
