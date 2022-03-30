package com.desafio.service;

import com.desafio.entidade.Veiculo;
import com.desafio.repository.VeiculoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class VeiculoService {

    @Autowired
    private VeiculoRepository repository;

    public List<Veiculo> listarVeiculos(){

        List<Veiculo> veiculos = repository.findAll();

        return veiculos;
    }

    public Optional<Veiculo> listarVeiculoPorId(Long id){
        return repository.findById(id);
    }

    public void salvarVeiculo(Veiculo veiculo){
        repository.save(veiculo);
    }

    public void excluirVeiculo(Long id){
        repository.deleteById(id);
    }

    public void atualizarVeiculo(Veiculo veiculo){
        repository.saveAndFlush(veiculo);
    }

    public List<Veiculo> buscarVeiculosPorMarcaAnoCor(String marca, int ano, String cor){
        return repository.buscarPorParametrosPassados(marca,ano,cor);
    }
}
