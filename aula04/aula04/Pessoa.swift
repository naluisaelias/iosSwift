//
//  Pessoa.swift
//  aula04
//
//  Created by Ana Luísa on 27/03/25.
//

import Cocoa

class Pessoa: NSObject {
    
    var nome:String
    var cidade:String
    
    init(nome: String, cidade: String) {
        self.nome = nome
        self.cidade = cidade
        print("\(nome) está sendo inicializada... ⚙")
    }
    
    deinit{
        print("\(nome) está sendo desinicializada... ⚙")
    }

}
