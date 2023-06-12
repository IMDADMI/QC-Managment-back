package com.example.projet.repository;
import com.example.projet.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Integer> {
    @Query("select p from Product p where p.productId=?1")
    public Product findById(int productId);


}
