package com.example.projet.service;

import com.example.projet.entity.Component;
import com.example.projet.repository.ComponentRepository;
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
class ComponentServiceTest {

    @Mock
    private ComponentRepository componentRepository;
    private ComponentService componentService;

    @BeforeEach
    void setUp(){ componentService = new ComponentService(componentRepository); }

    @Test
    void getAllComponents() {
        // When this request occurs
        componentService.getAllComponents();
        // We anticipate this request.
        verify(componentRepository).findAll();
    }

    @Test
    void saveOrUpdateComponent() {
        //create a new Component for test
        Component component = new Component(1,"Ram","DDR4",15,null);
        // When this request occurs
        componentService.saveOrUpdateComponent(component);
        ArgumentCaptor<Component> componentArgumentCaptor = ArgumentCaptor.forClass(Component.class);
        // We anticipate this request.
        verify(componentRepository).save(componentArgumentCaptor.capture());
        Component componentCaptur = componentArgumentCaptor.getValue();
        // We compare the two results.
        assertThat(componentCaptur).isEqualTo(component);
    }

    @Test
    void deleteComponentById() {
        //select a Component for the test
        int compId = 1;
        // When this request occurs
        componentService.deleteComponentById(compId);
        // We anticipate this request.
        verify(componentRepository).deleteById(compId);
    }
}