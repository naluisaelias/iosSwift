//
//  main.swift
//  excAula04
//
//  Created by Ana Luísa on 27/03/25.
//

import Foundation

var enfermeira: Enfermeira?

enfermeira = Enfermeira(nome: "Ana Luísa", salario: 2500.65, plantao: true, turnos: 4)

print("A enfermeira \(enfermeira!.nome) tem um salário de R$ \(enfermeira!.salario), faz \(enfermeira!.turnos) turnos por semana e nesse momento está no hospital = \(enfermeira!.plantao)")

enfermeira = nil

