//
//  main.swift
//  aula06
//
//  Created by Ana Luísa on 02/04/25.
//
import Foundation

// Classe atleta -> Jeito 01
var a = Atleta()

a.nome = "Ana Luísa"
a.idade = 22

print("Nome: \(a.nome)")
print("Idade: \(a.idade)")

print("A atleta \(a.nome) tem \(a.idade) anos")

// Classe atleta -> Jeito 02
var a2 = Atleta(nome: "Carlos", idade: 25)
print("O atleta \(a2.nome) tem \(a2.idade) anos")

// IMC
// a2.calcularIMC(peso: 100, altura: 1.85)
// print(a2.calcularIMC2(peso: 100, altura: 1.85))

// Classe atleta -> Jeito 03
// Criando uma referência que poderá receber um atleta "?"
var a3 : Atleta?
a3 = Atleta(nome: "Kennedy", idade: 52)
print("O atleta \(a3!.nome) tem \(a3!.idade) anos")

// ARC
// Classe pessoa
var ref1: Pessoa?
var ref2: Pessoa?
var ref3: Pessoa?

ref1 = Pessoa(nome: "Ana Luísa", cidade: "São Paulo")

ref2 = ref1
ref3 = ref1

ref1 = nil
ref2 = nil
ref3 = nil

// Método estático
print(Atleta.alerta())

// Herança
let p = Paratleta()
p.nome = "Jonas"
p.idade = 21
p.deficiencia = "braço direito amputado"
print(p.exibirAtleta())

// Sobrecarga
print(Atleta.alerta(tempoEmMinutos: 35))

// Protocolo
a.beberIsotonico()
a2.comerCarboidrato()
a3?.ingerirAlimentoPastoso()
a3 = nil

// Chamando uma sub-rotina que exibe um texto
do{
    try a2.calcularIMC(peso: 100, altura: 2.85)
} catch let error as NSError {
    print("Erro: \(error.domain)")
}
