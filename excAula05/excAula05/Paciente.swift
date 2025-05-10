//
//  Paciente.swift
//  excAula05
//
//  Created by Ana Luísa on 27/03/25.
//

import Cocoa

class Paciente: NSObject {
    
    var nome: String
    var temperatura: Float
    var febre: Bool
    
    init(nome: String) {
        self.nome = nome
        self.temperatura = 0.0
        self.febre = false
        print("Paciente \(nome) está sendo inicializado... ⚙")
        
    }
    
    deinit {
        print("Paciente \(nome) está sendo desinicializado... ⚙")
    }
    
    func receberTemperatura(temperatura: Float) {
        self.temperatura = temperatura
    }
    
    func medirFebre() -> Bool {
        if temperatura >= 38.0 {
            self.febre = true
        } else {
            self.febre = false
        }
        return febre
    }
    
    func retornarResultado() -> String {
        if febre == true{
            return "O paciente está com febre"
        } else {
            return "O paciente não está com febre"
        }
    }
    
    func dosarRemedio() -> Int {
        if temperatura < 36.0 {
            print("Temperatura abaixo de normal. Dosagem: 1")
            return 1
        } else if temperatura < 37.0 {
            print("Temperatura normal. Dosagem: 2")
            return 2
        } else if temperatura < 38.0 {
            print("Temperatura elevada. Dosagem: 3")
            return 3
        } else {
            print("Temperatura alta. Dosagem: 4")
            return 4
        }
    }
    
}



