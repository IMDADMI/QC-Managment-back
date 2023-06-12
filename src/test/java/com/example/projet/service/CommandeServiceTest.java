package com.example.projet.service;

import com.example.projet.entity.Commande;
import com.example.projet.repository.CommandeRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.sql.Date;
import java.util.Arrays;
import java.util.List;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class CommandeServiceTest {

    @Mock
    private CommandeRepository commandeRepository;

    private CommandeService underTest;

    @BeforeEach
    void setUp() {
        underTest = new CommandeService(commandeRepository);
    }

    @Test
    void testGetAllCommande() {
        // given
        List<Commande> expectedCommandes = Arrays.asList(
                new Commande(1, "credit card", 100.0, new Date(System.currentTimeMillis()), "processing", null),
    new Commande(1, "credit card", 100.0, new Date(System.currentTimeMillis()), "processing", null)

        );
        when(commandeRepository.findAll()).thenReturn(expectedCommandes);

        // when
        List<Commande> actualCommandes = underTest.getAllCommande();

        // then
        assertThat(actualCommandes).isEqualTo(expectedCommandes);
    }

    @Test
    void testSaveOrUpdateCommande() {
        // given
        Commande commandeToSaveOrUpdate = new Commande(1, "credit card", 100.0, new Date(System.currentTimeMillis()), "processing", null);


        // when
        underTest.saveOrUpdateCommande(commandeToSaveOrUpdate);

        // then
        verify(commandeRepository).save(commandeToSaveOrUpdate);
    }

    @Test
    void testDeleteCommandeById() {
        // given
        int commandeIdToDelete = 1;

        // when
        underTest.deleteCommandeById(commandeIdToDelete);

        // then
        verify(commandeRepository).deleteById(commandeIdToDelete);
    }
}
