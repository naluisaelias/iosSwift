//
//  ViewController.swift
//  estudoCp05
//
//  Created by Ana Luísa on 02/10/25.
//

import UIKit

var personagem:Personagem!=nil

class ViewController: UIViewController {
    
    @IBOutlet weak var idTextField: UITextField!
    
    @IBAction func okButton(_ sender: UIButton) {
        buscarPersonagem()
    }
    
    @IBOutlet weak var lblNome: UILabel!
    @IBOutlet weak var lblGenero: UILabel!
    @IBOutlet weak var lblPeso: UILabel!
    @IBOutlet weak var lblAltura: UILabel!
    @IBOutlet weak var lblAnoNascimento: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func buscarPersonagem(){
        guard let id = idTextField.text else { return }
        
        guard let url = URL(string: "https://swapi.dev/api/people/\(id)/") else {
            print("URL inválida")
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            
            do {
                let personagemDecodificado = try JSONDecoder().decode(Personagem.self, from: data)
                
                DispatchQueue.main.async {
                    self.lblNome.text = personagemDecodificado.name
                    self.lblGenero.text = personagemDecodificado.gender
                    self.lblPeso.text = personagemDecodificado.mass
                    self.lblAltura.text = personagemDecodificado.height
                    self.lblAnoNascimento.text = personagemDecodificado.birth_year
                }
                
            } catch let jsonError {
                print("Erro ao processar o JSON: ", jsonError)
            }
        }.resume()
    }
}
