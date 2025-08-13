//
//  ViewController.swift
//  aula11
//
//  Created by Ana Luísa on 13/08/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var animal = ["Urso", "Leão", "Rinoceronte", "Girafa", "Elefante"]
    var imagem = ["urso.png", "leao.png", "rino.png", "girafa.png", "ele.png"]

    @IBOutlet weak var minhaTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Quantas seções terá a lista
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Número de linhas da lista
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5    }
    
    // Retorna uma célula da tabela para o índice informado
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Célula
        let celula = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        celula.textLabel?.text = "\(animal[indexPath.row])"
        celula.imageView?.image = UIImage(named: "\(imagem[indexPath.row])")
        return celula
    }
    
    // Implementando a seleção de células
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let msg = "Selecionamos o animal \(animal[indexPath.row])"
        
        let alerta = UIAlertController(title: "Aviso",
                                       message: msg,
                                       preferredStyle: UIAlertController.Style.alert)
        
        alerta.addAction(UIAlertAction(title: "OK",
                                       style: UIAlertAction.Style.default,
                                       handler: nil))
        
        present(alerta, animated: true, completion: nil)
    }
    
    // Header (Cabeçalho)
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cabec = UIImageView(image: UIImage(named: "cabecalho"))
        return cabec
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 70
    }
    
    // Footer (Rodapé)
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footer = UIImageView(image: UIImage(named: "rodape"))
        return footer
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
}

