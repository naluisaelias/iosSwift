//
//  ViewController.swift
//  aula02
//
//  Created by Ana Luísa on 27/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labelNome: UILabel!
    @IBOutlet weak var labelIdade: UILabel!
    @IBOutlet weak var labelCidade: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelNome.text = "Meu nome é..."
        labelIdade.text = "Minha idade é..."
        labelCidade.text = "Minha cidade é..."
        
    }

    @IBAction func exibir(_ sender: Any) {
        labelNome.text = "Ana Luísa"
        labelIdade.text = "21 anos"
        labelCidade.text = "São Paulo"
    }
    
    @IBAction func limpar(_ sender: Any) {
        labelNome.text = " "
        labelIdade.text = " "
        labelCidade.text = " "
    }
}

