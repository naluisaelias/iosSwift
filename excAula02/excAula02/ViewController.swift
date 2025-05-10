//
//  ViewController.swift
//  excAula02
//
//  Created by Ana Luísa on 27/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labelNome: UILabel!
    @IBOutlet weak var labelCidade: UILabel!
    @IBOutlet weak var labelDataDeNascimento: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelNome.text = "Meu nome é..."
        labelCidade.text = "Minha cidade é..."
        labelDataDeNascimento.text = "Meu aniversário é..."
        labelEmail.text = "Meu email é..."
    }
    
    @IBAction func exibir(_ sender: Any) {
        labelNome.text = "Ana Luísa"
        labelCidade.text = "São Paulo"
        labelDataDeNascimento.text = "08 de Abril"
        labelEmail.text = "naluisaelias@gmail.com"
    }
    
    @IBAction func limpar(_ sender: Any) {
        labelNome.text = "Meu nome é..."
        labelCidade.text = "Minha cidade é..."
        labelDataDeNascimento.text = "Meu aniversário é..."
        labelEmail.text = "Meu email é..."
    }
    
}

