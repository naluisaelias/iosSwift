//
//  Personagem.swift
//  exercicioFixacao
//
//  Created by Ana Luísa on 02/04/25.
//

import Foundation

class Personagem: NSObject {
    
    private var _nome: String
    private var _vidas: Int
    private var _vivo: Bool
    private var _forca: Float
    
    // Construtor padrão
    override init(){
        self._nome = "Sem nome"
        self._vidas = 10
        self._vivo = true
        self._forca = 100.0
    }
    
    // Get & Set -> Nome
    var nome: String {
        get {
            return _nome
        }
        set {
            _nome = newValue
        }
    }
    
    // Get & Set -> Nº de Vidas
    var vidas: Int{
        get{
            return _vidas
        }
        set {
            _vidas = newValue
        }
    }
    
    // Get & Set -> Vivo?
    var vivo: Bool{
        get {
            return _vivo
        }
        set {
            _vivo = newValue
        }
    }
    
    // Get & Set -> Força
    var forca: Float{
        get {
            return _forca
        }
        set {
            _forca = newValue
        }
    }
    
    func imprimirAtributos(){
        print("Personagem: \(nome) ")
        print("Nº de Vidas: \(vidas)")
        print("Está Vivo?: \(vivo ? "Sim" : "Não")")
        print("Força total: \(forca)")
    }
    
    // Método com retorno -> Int
    func obterVidasRestantes() -> Int{
        return vidas
    }
    
    // Método com retorno -> Bool
    func obterStatusVida() -> Bool{
        return vivo
    }
    
    // Método com retorno -> String
    func obterStatusCompleto() -> String {
        if _vivo {
            return "\(nome) está vivo(a) com \(vidas) vidas restantes."
        } else {
            return "\(nome) está morto(a)."
        }
    }
    
    // Sobrecarga do método obterStatusCompleto -> Inclui força no status
    func obterStatusCompleto(incluirForca: Bool) -> String {
        if _vivo {
            return "\(nome) está vivo(a) com \(vidas) vidas restantes e \(forca) de força."
        } else {
                return "\(nome) está morto(a) e não tem mais força."
            }
        }
}

