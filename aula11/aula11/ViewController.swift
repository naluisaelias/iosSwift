//
//  ViewController.swift
//  aula11
//
//  Created by Usuário Convidado on 07/08/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var minhaTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minhaTableView.dataSource = self
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        celula.textLabel?.text = "Item número \(indexPath.row)"
        return celula
    }
    
}
