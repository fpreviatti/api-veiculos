package com.desafio.enums;

import java.util.ArrayList;
import java.util.List;

public enum EnumCor {

    AZUL("Azul"),
    AMARELO("Amarelo"),
    VERDE("Verde"),
    PRATA("Prata"),
    PRETO("Preto");

    public static List<String> CORES = new ArrayList<>();

    static {
        CORES.add(AZUL.descricao);
        CORES.add(AMARELO.descricao);
        CORES.add(VERDE.descricao);
        CORES.add(PRATA.descricao);
        CORES.add(PRETO.descricao);
    }

    private String descricao;

    EnumCor(String descricao) {
        this.descricao = descricao;
    }

}