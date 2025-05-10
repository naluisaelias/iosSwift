//
//  ViewController.swift
//  aula03
//
//  Created by Ana Luísa on 27/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewRosa: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ocultarView(_ sender: Any){ UIView.animate(withDuration: 2){
        self.viewRosa.alpha = 0
        }
    }
    
    @IBAction func exibirView(_ sender: Any) {
        UIView.animate(withDuration: 2){
            self.viewRosa.alpha = 1
        }
    }
}


