//
//  main.swift
//  excAula05
//
//  Created by Ana Luísa on 27/03/25.
//
import Foundation

// Enfermeira
var enfermeira: Enfermeira?

enfermeira = Enfermeira(nome: "Ana Luísa", salario: 2500.65, plantao: true, turnos: 4)

print("A enfermeira \(enfermeira!.nome) tem um salário de R$ \(enfermeira!.salario), faz \(enfermeira!.turnos) turnos por semana e nesse momento está no hospital = \(enfermeira!.plantao)")

enfermeira = nil

// Paciente
var p: Paciente?

p = Paciente(nome: "João")

p!.receberTemperatura(temperatura: 39.2)

p!.medirFebre()

print(p!.retornarResultado())

p!.dosarRemedio()

p = nil

// Paciente 2
var p2: Paciente?

p2 = Paciente(nome: "Kennedy")

p2!.receberTemperatura(temperatura: 36.5)

p2!.medirFebre()

print(p2!.retornarResultado())

p2?.dosarRemedio()

p2 = nil



