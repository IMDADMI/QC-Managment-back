package com.example.projet.controller;

import com.example.projet.entity.Configuration;
import com.example.projet.service.ConfigurationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class ConfigurationController {

    @Autowired
    private ConfigurationService configurationService;

    // Get all configurations
    @GetMapping("/api/configurations/all")
    public List<Configuration> getAllConfigurations() {
        return configurationService.getAllConfiguration();
    }

    // Get a configuration by ID
    /*@GetMapping("/{id}")
    public Configuration getConfigurationById(@PathVariable Long id) {
        return configurationService.getConfigurationById(id);
    }*/

    // Create a new configuration
    @PostMapping("/api/configurations/add")
    public void createConfiguration(@RequestBody Configuration configuration) {
         configurationService.saveOrUpdateConfiguration(configuration);
    }

    // Update a configuration
    @PutMapping("/api/configurations/update")
    public void updateConfiguration(@RequestBody Configuration configuration) {
         configurationService.saveOrUpdateConfiguration( configuration);
    }

    // Delete a configuration
    @DeleteMapping("/api/configurations/delete/{id}")
    public void deleteConfiguration(@PathVariable int id) {
        configurationService.deleteConfigurationById(id);
    }

}

