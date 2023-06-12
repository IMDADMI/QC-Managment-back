package com.example.projet.controller;

import com.example.projet.entity.Login;
import com.example.projet.entity.User;
import com.example.projet.service.UserSrvice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
public class UserController {
    @Autowired
    private UserSrvice userSrvice;
    @PostMapping("/api/user/login")
    public User login(@RequestBody Login loginRequest) { return userSrvice.login(loginRequest);
    }
    // Get a user by Name
    @GetMapping("/api/user/{name}")
    public List<User> getUserByName(@PathVariable String name) {
        return userSrvice.getUserByName(name);
    }
    @GetMapping("/api/user/allUser")
    public List<User> getAllProduc() {
        return userSrvice.getAllUsers();
    }
    @PostMapping("/api/user/addUser")
    public void addUser(@RequestBody User user) { userSrvice.addUser(user);}

    @PutMapping("/api/user/modifier")
    public void updateUser(@RequestBody User user) { userSrvice.updateUser(user);}

    @DeleteMapping("/api/user/deleteUser/{id}")
    public void deleteUser(@PathVariable("id") int id) { userSrvice.deleteUserById(id);}
}
