package com.example.projet.controller;

import com.example.projet.entity.Product;
import com.example.projet.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@CrossOrigin
@RestController
public class ProductController {
    @Autowired
    private ProductService productService;
    @GetMapping("/api/product/allProduct")
    public List<Product> getAllProduc() {
        return productService.getAllProduct();
    }
    @PostMapping("/api/product/addProduct")
    public void addProduct(@RequestBody Product product) {
        productService.addProduct(product);
    }

    @GetMapping("/api/product/{id}")
    public Product getProductById(@PathVariable int id) {
        return productService.getProductById(id);
    }

    @PostMapping("/api/product/addProducts")
    public void addProduct(@RequestBody ArrayList<Product> product) {
        productService.addProducts(product);
    }

    @PutMapping("/api/product/updateProduct")
    public void updateProduct(@RequestBody Product product) {
        productService.updateProduct(product);
    }

    @DeleteMapping("/api/product/deleteProduct/{id}")
    public void deleteProduct(@PathVariable("id") int id) {
        productService.deleteProductById(id);
    }

}
