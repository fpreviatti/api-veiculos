package com.desafio.entidade;

import io.swagger.annotations.ApiParam;
import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name="veiculo")
public class Veiculo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name="veiculo")
    private String nome;
    private String marca;
    private Integer ano;
    private String descricao;
    private String cor;

    @Column(columnDefinition = "boolean default false")
    private boolean vendido;
    @ApiParam(hidden = true)
    private LocalDateTime created;
    @ApiParam(hidden = true)
    private LocalDateTime updated;

    public Veiculo(){

    }

    public Veiculo(Long id, String nome, String marca, Integer ano, String descricao, String cor, boolean vendido,LocalDateTime created, LocalDateTime updated) {
        this.id = id;
        this.nome = nome;
        this.marca = marca;
        this.ano = ano;
        this.descricao = descricao;
        this.vendido = vendido;
        this.created = created;
        this.updated = updated;
        this.cor = cor;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public Integer getAno() {
        return ano;
    }

    public void setAno(Integer ano) {
        this.ano = ano;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public boolean isVendido() {
        return vendido;
    }

    public void setVendido(boolean vendido) {
        this.vendido = vendido;
    }

    public LocalDateTime getCreated() {
        return created;
    }

    public void setCreated(LocalDateTime created) {
        this.created = created;
    }

    public LocalDateTime getUpdated() {
        return updated;
    }

    public void setUpdated(LocalDateTime updated) {
        this.updated = updated;
    }

}
