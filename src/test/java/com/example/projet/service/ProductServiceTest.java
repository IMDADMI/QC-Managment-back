package com.example.projet.service;

import com.example.projet.entity.Product;
import com.example.projet.entity.Configuration;
import com.example.projet.repository.ProductRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import java.util.ArrayList; // import the ArrayList class
import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.verify;

@ExtendWith(MockitoExtension.class)
class ProductServiceTest {

    @Mock
    private ProductRepository productRepository;
    private ProductService productService;

    @BeforeEach
    void setUp(){ productService = new ProductService(productRepository); }

    @Test
    void getAllProduct() {
        // When this request occurs
        productService.getAllProduct();
        // We anticipate this request.
        verify(productRepository).findAll();
    }

    @Test
    void addProduct() {
        //create a new product for test
        //Product product = new Product(1,"PrOneName","PrOneType","PrOneBrand","PrOneModel","PrOneDescription","PrOneimage",1000,"PrOneGarrnty",15,new ArrayList<Configuration>(),null);
        Product product = new Product(0,"PrOneName","PrOneType","PrOneBrand","PrOneModel","PrOneDescription","PrOneimage",1000,"PrOneGarrnty",15,new ArrayList<Configuration>(),null);
        //Product product = new Product(1,"PrOneName","PrOneType","PrOneBrand","PrOneModel","PrOneDescription","PrOneimage",1000,"PrOneGarrnty",15,new ArrayList<Configuration>(),null);
        // When this request occurs
        productService.addProduct(product);
        ArgumentCaptor<Product> ProductArgumentCaptor = ArgumentCaptor.forClass(Product.class);
        // We anticipate this request.
        verify(productRepository).save(ProductArgumentCaptor.capture());
        Product productCaptur = ProductArgumentCaptor.getValue();
        // We compare the two results.
        assertThat(productCaptur).isEqualTo(product);
    }

    @Test
    void updateProduct() {
        //create a new product for test
        Product updatedProduct = new Product(1,"PrOneName","PrOneType","PrOneBrand","PrOneModel","PrOneDescription","PrOneimage",1000,"PrOneGarrnty",15,null,null);
        // When this request occurs
        productService.updateProduct(updatedProduct);
        // We anticipate this request.
        verify(productRepository).save(updatedProduct);
    }

    @Test
    void deleteProductById() {
        //select a product for the test
        int productId = 1;
        // When this request occurs
        productService.deleteProductById(productId);
        // We anticipate this request.
        verify(productRepository).deleteById(productId);
    }
}