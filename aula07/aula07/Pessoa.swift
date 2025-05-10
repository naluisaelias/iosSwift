//
//  Pessoa.swift
//  aula07
//
//  Created by Ana Luísa on 24/04/25.
//

import Foundation

class Pessoa{
    var nome:String!
    var peso: Float!
    var altura: Float!
    var imc:Float!
    
    init (){
        
    }
    
    init(nome: String, peso: Float, altura: Float){
        self.nome = nome
        self.altura = altura
        self.peso = peso
    }
    
    func calcular(){
        imc = peso/(altura * altura)
    }
    
    func calcular_2() -> Float{
        return peso/(altura * altura)
    }
}
