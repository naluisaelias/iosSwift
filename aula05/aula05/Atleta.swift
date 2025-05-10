//
//  Atleta.swift
//  aula05
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
    
    // Funções
    func calcularIMC(peso: Float, altura: Float){
        let imc = peso / (altura * altura)
        let formatado = String(format: "%0.2f", imc)
        print("O IMC de \(self.nome) é \(formatado)")
    }
    
    // OU:::
    
    func calcularIMC2(peso: Float, altura: Float) -> Float {
        return peso / pow(altura,2)
    }
    
    func exibirAtleta() -> String{
        return "O atleta " + self.nome
    }
    
    // Desinicializar
    deinit {
        print("\(nome) está sendo desinicializado!")
    }
    
    // Método Estático
    class func alerta() -> String{
        return "A competição irá iniciar em breve..."
    }
    
    // Sobrecarga
    class func alerta(tempoEmMinutos: Int) -> String{
        return "A competição ira iniciar em \(tempoEmMinutos) minutos"
    }

}
