package com.servicio3.api.domain.entidades;

import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.List;

@Getter
@NoArgsConstructor
public class Entidad{
    private String nombre;
    private List<Integer> idEstablecimientos;
}
