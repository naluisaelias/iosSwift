//
//  Atleta.swift
//  aula04
//
//  Created by Ana Luísa on 27/03/25.
//

import Cocoa

class Atleta: NSObject {
    
    var nome:String
    var idade:Int
    
    override init() {
        self.nome = ""
        self.idade = 0
    }
    
    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }
    
    deinit {
        print("\(nome) está sendo desinicializado!")
    }

}
