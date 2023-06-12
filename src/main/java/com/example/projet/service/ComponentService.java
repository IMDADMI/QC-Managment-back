package com.example.projet.service;

import com.example.projet.entity.Component;
import com.example.projet.repository.ComponentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ComponentService {

    private final ComponentRepository componentRepository;

    public ComponentService(ComponentRepository componentRepository){ this.componentRepository = componentRepository; }

    public List<Component> getAllComponents() {
        return componentRepository.findAll();
    }

    public Component saveOrUpdateComponent(Component component) {
        return componentRepository.save(component);
    }
    public void saveOrUpdateComponents(ArrayList<Component> component) {
        for(Component component1:component){
            this.saveOrUpdateComponent(component1);
        }
    }

    public void deleteComponentById(int componentId) {
        componentRepository.deleteById(componentId);
    }

}
