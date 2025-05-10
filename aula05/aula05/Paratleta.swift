//
//  Paratleta.swift
//  aula05
//
//  Created by Ana Luísa on 27/03/25.
//

import Cocoa

class Paratleta: Atleta {

    var deficiencia:String
    
    override init(){
        deficiencia=""
        super.init()
    }
    
    override func exibirAtleta() -> String {
        return super.exibirAtleta() + " deficiência relatada \(deficiencia)"
    }
    
}
