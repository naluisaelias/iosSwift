//
//  Paratleta.swift
//  aula06
//
//  Created by Ana Luísa on 02/04/25.
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
