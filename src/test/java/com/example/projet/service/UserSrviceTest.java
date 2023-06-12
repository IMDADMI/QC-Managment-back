package com.example.projet.service;

import com.example.projet.entity.Login;
import com.example.projet.entity.User;
import com.example.projet.repository.UserRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.Arrays;
import java.util.List;

import static org.mockito.Mockito.verify;
import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class UserSrviceTest {

    @Mock
    private UserRepository userRepository;
    private UserSrvice underTes;

    @BeforeEach
    void setUp() {
        underTes = new UserSrvice(userRepository);
    }
    @Test
    void getAllUsers() {
        //whene
        underTes.getAllUsers();
        //then
        verify(userRepository).findAll();

    }

    @Test
    void login() {
        // given
        Login loginRequest = new Login("ibra@gmail.com", "ps");
        User expectedUser = new User(1, "ibra", "gho", "ibra@gmail.com", "ps", "+21200", "berkane", "berkane", "maroc", "maroc", 01, true, null);
        when(userRepository.login(loginRequest.login(), loginRequest.password())).thenReturn(expectedUser);

        // when
        User actualUser = underTes.login(loginRequest);

        // then
        assertThat(actualUser).isEqualTo(expectedUser);
    }

    @Test
    void getUserByName() {
        // given
        String name = "ibra";
        List<User> expectedUsers = Arrays.asList(
                new User(1, "ibra", "gho", "ibra@gmail.com", "ps", "+21200", "berkane", "berkane", "maroc", "maroc", 01, true, null),
                new User(2, "ibrahim", "hamdi", "ibrahim@example.com", "123456", "+123456789", "Paris", "Paris", "France", "France", 01, true, null)
        );
        when(userRepository.findByName(name)).thenReturn(expectedUsers);

        // when
        List<User> actualUsers = underTes.getUserByName(name);

        // then
        assertThat(actualUsers).isEqualTo(expectedUsers);
    }

    @Test
    void addUser() {
        //given
        User user = new User(1,"ibra","gho","ibra@gmail.com","ps","+21200","berkane","berkane","maroc","maroc",01,true,null);
        //whene
        underTes.addUser(user);
        //then
        ArgumentCaptor<User> userArguement=ArgumentCaptor.forClass(User.class);
        verify(userRepository).save(userArguement.capture());
        User userCaptur=userArguement.getValue();
        assertThat(userCaptur).isEqualTo(user);
    }

    @Test
    void updateUser() {
        // given
        User userToUpdate = new User(1, "ibra", "gho", "ibra@gmail.com", "ps", "+21200", "berkane", "berkane", "maroc", "maroc", 01, true, null);

        // when
        underTes.updateUser(userToUpdate);

        // then
        verify(userRepository).save(userToUpdate);
    }

    @Test
    void deleteUserById() {
        // given
        int userId = 1;
        // when
        underTes.deleteUserById(userId);
        // then
        verify(userRepository).deleteById(userId);
    }
}