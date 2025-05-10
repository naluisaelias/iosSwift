//
//  ViewController.swift
//  aula07
//
//  Created by Ana Luísa on 24/04/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtAtleta: UITextField!
    
    @IBOutlet weak var txtPeso: UITextField!
    
    @IBOutlet weak var txtAltura: UITextField!
    
    @IBOutlet weak var txtIMC: UITextField!
    
    @IBAction func calcular(_ sender: Any) {
        
        let p = Pessoa()
        p.nome = txtAtleta.text
        
        if let texto = txtPeso.text{
            if let valor = Float(texto){
                p.peso = valor
                if let texto = txtAltura.text {
                    if let valor = Float (texto){
                        p.altura = valor
                        txtIMC.text = String(format: "%.2f", p.calcular_2())
                    } else {
                        txtIMC.text="0"
                        print("Digite apenas números para a altura")
                    }
                }else {
                    txtIMC.text="0"
                    print("Digite apenas números para o peso")
                }
            } else{
                txtIMC.text = "0"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

