package com.example.projet.entity;
import ch.qos.logback.core.boolex.EvaluationException;
import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.GenerationType;
import jakarta.persistence.*;
import lombok.*;

import java.util.List;
@Entity
@Table(name = "bascket")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Bascket {

    @Id //cle primaire
    @GeneratedValue(strategy = GenerationType.IDENTITY) //genere automatiquement par le SGBD
    @Column(name="bascket_id")
    private int bascketId ;

    @Column(name="totale_amount",nullable = false)
    private double totaleAmount;


    @JsonIgnore
    @OneToMany(mappedBy = "bascket", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    List<Ordere> orderes;

}
