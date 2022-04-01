package com.desafio.enums;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;


public enum EnumMarca{
    VOLKSWAGEN("Wolkswagen"),
    FORD("Ford"),
    FIAT("Fiat"),
    RENAULT("Renault"),
    PEUGEOT("Peugeot");

    public static List<String> MARCAS = new ArrayList<>();

    static {
        MARCAS.add(VOLKSWAGEN.descricao);
        MARCAS.add(FORD.descricao);
        MARCAS.add(FIAT.descricao);
        MARCAS.add(RENAULT.descricao);
        MARCAS.add(PEUGEOT.descricao);

    }

    private String descricao;

    EnumMarca(String descricao) {
        this.descricao = descricao;
    }

}