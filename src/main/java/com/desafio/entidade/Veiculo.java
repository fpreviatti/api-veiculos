package com.desafio.entidade;

import io.swagger.annotations.ApiParam;
import javax.persistence.*;
import javax.validation.constraints.*;
import java.time.LocalDateTime;

@Entity
@Table(name="veiculo")
@NamedNativeQuery(
        name = "Veiculo.buscarPorParametrosPassados",
        query = "select * from veiculo where marca = ?1 and ano = ?2  and cor = ?3",
        resultClass = Veiculo.class)
public class Veiculo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name="veiculo")
    @NotBlank(message = "{app.veiculo.blank}")
    @Size(min = 2, max = 30, message = "{app.veiculo.size}")
    private String nome;

    @NotBlank(message = "{app.marca.blank}")
    @Size(min = 2, max = 30, message = "{app.marca.size}")
    private String marca;

    @Digits(integer = 4, message="{app.ano.min}", fraction = 0)
    private Integer ano;
    private String descricao;

    @NotBlank(message = "{app.cor.blank}")
    @Size(min = 2, max = 30, message = "{app.cor.size}")
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
