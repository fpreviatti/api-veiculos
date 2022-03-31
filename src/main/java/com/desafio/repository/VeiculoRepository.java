package com.desafio.repository;

import com.desafio.entidade.Veiculo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

public interface VeiculoRepository extends JpaRepository<Veiculo,Long> {

    @Query(name = "Veiculo.buscarPorParametrosPassados")
    public List<Veiculo> buscarPorParametrosPassados(String marca, int ano, String cor);

    public List<Veiculo> findByVendido(boolean vendido);

    public List<Veiculo> findByCreated(LocalDateTime date);

}
