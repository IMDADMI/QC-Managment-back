package com.example.projet.service;

import com.example.projet.entity.Component;
import com.example.projet.entity.Configuration;
import com.example.projet.entity.Product;
import com.example.projet.repository.ConfigurationRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.verify;

@ExtendWith(MockitoExtension.class)
class ConfigurationServiceTest {

    @Mock
    private ConfigurationRepository configurationRepository;
    private ConfigurationService configurationService;

    @BeforeEach
    void setUp(){ configurationService = new ConfigurationService(configurationRepository); }
    @Test
    void getAllConfiguration() {
        // When this request occurs
        configurationService.getAllConfiguration();
        // We anticipate this request.
        verify(configurationRepository).findAll();
    }

    @Test
    void saveOrUpdateConfiguration() {
        Product product = new Product(1,"PrOneName","PrOneType","PrOneBrand","PrOneModel","PrOneDescription","PrOneimage",1000,"PrOneGarrnty",15,null,null);
        Component component = new Component(1,"Ram","DDR4",15,null);

        //create a new Configuration for test
        Configuration configuration = new Configuration(1,20,"Ghz",product,component);
        // When this request occurs
        configurationService.saveOrUpdateConfiguration(configuration);
        ArgumentCaptor<Configuration> configurationArgumentCaptor = ArgumentCaptor.forClass(Configuration.class);
        // We anticipate this request.
        verify(configurationRepository).save(configurationArgumentCaptor.capture());
        Configuration configurationCaptur = configurationArgumentCaptor.getValue();
        // We compare the two results.
        assertThat(configurationCaptur).isEqualTo(configuration);
    }

    @Test
    void deleteConfigurationById() {
        //select a Configuration for the test
        int confId = 1;
        // When this request occurs
        configurationService.deleteConfigurationById(confId);
        // We anticipate this request.
        verify(configurationRepository).deleteById(confId);
    }
}