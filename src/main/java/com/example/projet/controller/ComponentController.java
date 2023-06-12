package com.example.projet.controller;

import com.example.projet.entity.Component;
import com.example.projet.service.ComponentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@CrossOrigin
public class ComponentController {
    @Autowired
    private ComponentService componentService;

    @GetMapping("/api/component/all")
    public List<Component> getAllComponents() {
        return componentService.getAllComponents();
    }

    @PostMapping("/api/component/add")
    public void addComponent(@RequestBody Component component) {
         componentService.saveOrUpdateComponent(component);
    }
    @PostMapping("/api/component/adds")
    public void addComponents(@RequestBody ArrayList<Component> component) {
        componentService.saveOrUpdateComponents(component);
    }
    @PutMapping("/api/component/update")
    public void updateComponent(@RequestBody Component component) {
         componentService.saveOrUpdateComponent(component);
    }
    @DeleteMapping("/api/component/delete/{componentId}")
    public void deleteComponentById(@PathVariable int componentId) {
        componentService.deleteComponentById(componentId);
    }
}
