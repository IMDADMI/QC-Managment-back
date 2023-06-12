package com.example.projet.service;

import com.example.projet.entity.Configuration;
import com.example.projet.repository.ConfigurationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ConfigurationService {


    private final ConfigurationRepository configurationRepository;

    public ConfigurationService(ConfigurationRepository configurationRepository){this.configurationRepository = configurationRepository;}

    public List<Configuration> getAllConfiguration() {
        return configurationRepository.findAll();
    }

    public Configuration saveOrUpdateConfiguration(Configuration configuration) {
        return configurationRepository.save(configuration);
    }

    public void deleteConfigurationById(int configId) {
        configurationRepository.deleteById(configId);
    }
}

