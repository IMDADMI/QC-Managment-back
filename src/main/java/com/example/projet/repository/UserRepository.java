package com.example.projet.repository;

import com.example.projet.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends JpaRepository<User,Integer> {
    @Query("select u from User u where u.email=?1 and u.password=?2")
    public User login(String login, String password);
    @Query("select u from User u where u.firstName LIKE %?1% or u.lastName LIKE %?1%")
    public List<User> findByName(String userId);
}
