//
//  Enfermeira.swift
//  excAula05
//
//  Created by Ana Luísa on 27/03/25.
//
import Cocoa

class Enfermeira: NSObject {
    
    var nome: String
    var salario: Float
    var plantao: Bool
    var turnos: Int
    
    init(nome: String, salario: Float, plantao: Bool, turnos: Int) {
        self.nome = nome
        self.salario = salario
        self.plantao = plantao
        self.turnos = turnos
        print("Enfermeira \(nome) está sendo inicializada... ⚙")
    }
    
    deinit {
        print("Enfermeira \(nome) está sendo desinicializada... ⚙")
    }

}
