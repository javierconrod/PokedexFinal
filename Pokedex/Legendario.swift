//
//  Legendario.swift
//  Pokedex
//
//  Created by Alumno on 29/11/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation

class Legendario{
    var nombre : String
    var categoria : String
    var tipo1 : String
    var tipo2 : String
    var altura : String
    var peso : String
    var imagen: String
    var descripcion : String
    var numero : String
    
    init(nombre:String, categoria:String, tipo1:String, tipo2:String, altura:String, peso:String, imagen:String, descripcion:String, numero:String){
        self.nombre=nombre
        self.categoria=categoria
        self.tipo1=tipo1
        self.tipo2=tipo2
        self.altura=altura
        self.peso=peso
        self.imagen=imagen
        self.descripcion=descripcion
        self.numero=numero
    }
}
