//
//  Fada.swift
//  exercicioFixacao
//
//  Created by Ana Luísa on 02/04/25.
//

import Foundation

class Fada: Personagem {
    
    private var _poder: String
    private var _magia: Float
    
    override init(){
        self._poder = "Sem poderes"
        self._magia = 0.0
        super.init()
    }
    
    // Get & Set -> Poder
    var poder: String{
        get {
            return _poder
        }
        set {
            _poder = newValue
        }
    }
    
    // Get & Set -> Magia
    var magia: Float {
        get {
            return _magia
        }
        set {
            _magia = newValue
        }
    }
    
    override func imprimirAtributos() {
        super.imprimirAtributos()  // Método da classe base
        print("Poder: \(poder)")
        print("Magia: \(magia)")
        print()
        }
}
