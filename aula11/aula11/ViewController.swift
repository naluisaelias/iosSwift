//
//  ViewController.swift
//  aula11
//
//  Created by Ana Luísa on 13/08/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

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
        celula.textLabel?.text = "Item número \(indexPath.row + 1)"
        celula.imageView?.image = UIImage(named: "taylorswift.png")
        return celula
    }
}

