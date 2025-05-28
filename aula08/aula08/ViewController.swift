//
//  ViewController.swift
//  aula08
//
//  Created by Ana Luísa on 27/05/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblIdade: UILabel!
    @IBOutlet weak var lblPas: UILabel!
    @IBOutlet weak var lblPad: UILabel!
    @IBOutlet weak var lblLink: UILabel!
    
    @IBOutlet weak var segRisco: UISegmentedControl!
    
    @IBAction func mudarIndice(_ sender: Any) {
        switch segRisco.selectedSegmentIndex {
        case 0:
            print ("Você escolheu o 1º botão")
        case 1:
            print ("Você escolheu o 2º botão")
        case 2:
            print ("Você escolheu o 3º botão")
        case 3:
            print ("Você escolheu \(segRisco.titleForSegment(at: segRisco.selectedSegmentIndex)!)")
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

