package com.example.projet.service;

import com.example.projet.entity.Component;
import com.example.projet.entity.Configuration;
import com.example.projet.entity.Product;
import com.example.projet.repository.ComponentRepository;
import com.example.projet.repository.ConfigurationRepository;
import com.example.projet.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
@Service
public class ProductService {
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private ComponentRepository componentRepository;
    @Autowired
    private ConfigurationRepository configurationRepository;
    public Product getProductById(int productId) { return productRepository.findById(productId); }


    public ProductService(ProductRepository productRepository){
        this.productRepository = productRepository;
    }
    public List<Product> getAllProduct() {
        return productRepository.findAll();
    }

    public void addProduct(Product product) {
        // Create a new Product object to be saved
        Product savedProduct = new Product();
        savedProduct.setProductName(product.getProductName());
        savedProduct.setProductType(product.getProductType());
        savedProduct.setBrand(product.getBrand());
        savedProduct.setModel(product.getModel());
        savedProduct.setDescription(product.getDescription());
        savedProduct.setImage(product.getImage());
        savedProduct.setProductPrice(product.getProductPrice());
        savedProduct.setGarrntyPerriode(product.getGarrntyPerriode());  

        savedProduct.setWeight(product.getWeight());
        // modification pour les tests
        savedProduct.setConfiguartion(new ArrayList<Configuration>());
        // end modification
        productRepository.save(savedProduct);
        savedProduct.setProductId(savedProduct.getProductId());
        System.out.println("\n\n\n" + savedProduct.getProductId() + "\n\n\n");
        List<Configuration> configurations = product.getConfiguartion();
        List<Configuration> savedConfigurations = new ArrayList<>();
        for(Configuration configuration : configurations){
            Configuration savedConfiguration = new Configuration();
            savedConfiguration.setQuantity(configuration.getQuantity());
            savedConfiguration.setUnite(configuration.getUnite());
            savedConfiguration.setProduct(savedProduct);
            Component component = configuration.getComponent();
            Component savedComponent = componentRepository.findById(component.getCompId()).orElse(null);
            if (savedComponent != null) {
                savedConfiguration.setComponent(savedComponent);
                configurationRepository.save(savedConfiguration);
                savedConfigurations.add(savedConfiguration);
            } else {
                throw new RuntimeException("\n\nComponent with compId " + component.getCompId() + " not found in the database.\n\n");
            }
        }

    }


    public void updateProduct(Product product) {
        productRepository.save(product);
    }

    public void deleteProductById(int id) {
        productRepository.deleteById(id);
    }


    public void addProducts(ArrayList<Product> products) {
        for(Product prosucts: products){
            this.addProduct(prosucts);
        }
    }
}
