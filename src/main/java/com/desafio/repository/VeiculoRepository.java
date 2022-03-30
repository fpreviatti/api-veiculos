package com.desafio.repository;

import com.desafio.entidade.Veiculo;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface VeiculoRepository extends JpaRepository<Veiculo,Long> {

    public Optional<Veiculo> findByMarcaAndAnoAndCor(String nome, int ano, String cor);

}
