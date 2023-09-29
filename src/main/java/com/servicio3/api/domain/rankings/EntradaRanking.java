package com.servicio3.api.domain.rankings;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class EntradaRanking {
    private int puesto;
    private Float puntaje;
    private String entidad;

    public EntradaRanking(Float puntaje, String entidad) {
        this.puntaje = puntaje;
        this.entidad = entidad;
    }
}
