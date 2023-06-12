package com.example.projet.service;

import com.example.projet.entity.Login;
import com.example.projet.entity.User;
import com.example.projet.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserSrvice {
    private final UserRepository userRepository;

    public UserSrvice(UserRepository userRepository) {
        this.userRepository=userRepository;
    }

    public List<User>getAllUsers(){
       return userRepository.findAll();
    }
    public User login(Login loginRequest) {return userRepository.login(loginRequest.login(), loginRequest.password()); }
    public List<User> getUserByName(String userId) { return userRepository.findByName(userId); }
    public void addUser(User user) { userRepository.save(user); }

    public void updateUser(User user) {userRepository.save(user);}

    public void deleteUserById(int id) { userRepository.deleteById(id); }

}
