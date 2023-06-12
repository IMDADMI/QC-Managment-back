package com.example.projet.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
@Entity
@Table(name = "ordere")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Ordere {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "order_id")
    private int orderId;

    @Column(name = "order_quantity", nullable = false)
    private int orderQuantity;

    @Column(name = "order_price", nullable = false)
    private double orderPrice;

    @Column(nullable = false)
    private double discount;


    @Column(name = "order_date")
    @Temporal(TemporalType.DATE)
    private Date orderDate;

   // @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "user_id")
    //@MapsId("userId")
    private User user;

    // @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "bascket_id")
    //@MapsId("bascketId")
    private Bascket bascket;

    //@JsonIgnore
    @ManyToOne
    @JoinColumn(name = "product_id")
    //@MapsId("productId")
    private Product product;

    //@JsonIgnore
    @ManyToOne
    @JoinColumn(name = "comd_id")
    //@MapsId("comdId")
    private Commande commande;

}
