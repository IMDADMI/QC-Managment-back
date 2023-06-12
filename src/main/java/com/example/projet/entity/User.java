package com.example.projet.entity;


import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Table(name = "user")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="user_id")
    private int userId;

    @Column(name="first_name",nullable = false, length = 100)
    private String firstName;

    @Column(name="last_name",nullable = false, length = 100)
    private String lastName;

    @Column(nullable = false, length = 100)
    private String email;

    @Column(nullable = false, length = 100)
    private String password;

    @Column(name="full_number",nullable = false, length = 100)
    private String fullNumber;

    @Column(nullable = false, length = 100)
    private String adress;

    @Column(nullable = false, length = 100)
    private String city;

    @Column(nullable = false, length = 100)
    private String state;

    @Column(nullable = false, length = 100)
    private String country;

    @Column(name="zip_code",nullable = false)
    private int zipCode;

    @Column(name="is_admin",nullable = false)
    private boolean isAdmin;

    @JsonIgnore
    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    List<Ordere> orderes;



}
