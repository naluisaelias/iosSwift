//
//  main.swift
//  exercicioFixacao
//
//  Created by Ana Luísa on 02/04/25.
//

import Foundation

// Imprimindo atributos padrão
var p = Personagem()
p.imprimirAtributos()
print()

// Usando Getters & Setters
p.nome = "Anna"
p.vidas = 10
p.forca = 95.45

// Imprimindo após modificações
p.imprimirAtributos()
print()

// Métodos:::

// Método com retorno -> Int
print("Vidas restantes de \(p.nome) -> \(p.obterVidasRestantes())")
print()

// Método com retorno -> Bool
if (p.obterStatusVida() == true){
    print("\(p.nome) está vivo(a)")
    print()
} else {
    print("\(p.nome) está morto(a).")
    print()
    }

// Método com retorno -> String
print(p.obterStatusCompleto())
print()

// Método com sobrecarga
print(p.obterStatusCompleto(incluirForca: true))
print()

// Herança
var f = Fada()
f.nome = "Taylor"
f.poder = "Voar e Curar"
f.magia = 100.0
f.imprimirAtributos()

