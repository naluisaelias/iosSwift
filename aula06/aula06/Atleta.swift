//
//  Atleta.swift
//  aula06
//
//  Created by Ana Luísa on 02/04/25.
//
import Cocoa

class Atleta: NSObject, AlimentoLiquido, AlimentoSolido, AlimentoLiquidoSolido {
    
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
    func calcularIMC(peso: Float, altura: Float) throws {
        // Exceção
        if altura > 2 {
            let msg = "Altura não pode ser maior que 2 metros"
            throw NSError(domain: msg, code: 0, userInfo: nil)
        }
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
    
    // Protocolo
    func beberIsotonico() {
        print("Atleta \(self.nome) deve beber Gatorade")
    }
    
    func comerCarboidrato() {
        print("Atleta \(self.nome) deve comer batata doce")
    }
    
    func ingerirAlimentoPastoso() {
        print("Atleta \(self.nome) deve comer iogurte")
    }

}

