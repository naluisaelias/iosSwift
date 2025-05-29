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
    
    // Segmented Control:::
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
    
    // Stepper:::
    @IBOutlet weak var stpIdade: UIStepper!
    @IBAction func mudarValorStepper(_ sender: Any) {
        lblIdade.text = "\(Int(stpIdade.value))"
    }
    
    // Slider:::
    @IBAction func mudarValorSliderPas(_ sender: UISlider) {
        lblPas.text = "\(Int(sender.value))"
    }
    
    @IBAction func mudarValorSliderPad(_ sender: UISlider) {
        lblPad.text = "\(Int(sender.value))"
    }
    
    // Switch:::
    @IBAction func mudarValorSwitch(_ sender: UISwitch) {
        print(NSNumber(value: sender.isOn))
    }
    
    // Botão
    @IBAction func receberLink(_ sender: UIButton) {
        let alerta = UIAlertController(
            title: "Forma para receber o exame",
            message: "Faça sua escolha",
            preferredStyle: UIAlertController.Style.actionSheet)
    
        alerta.addAction(UIAlertAction(
            title: "SMS",
            style: UIAlertAction.Style.default,
            handler: {action in self.lblLink.text = action.title} ))
        
        alerta.addAction(UIAlertAction(
            title: "E-Mail",
            style: UIAlertAction.Style.default,
            handler: {action in self.lblLink.text = action.title} ))
        
        alerta.addAction(UIAlertAction(
            title: "WhatsApp",
            style: UIAlertAction.Style.default,
            handler: {action in self.lblLink.text = action.title} ))
        
        alerta.addAction(UIAlertAction(
            title: "Cancelar",
            style: UIAlertAction.Style.cancel,
            handler: nil ))
        
        present(alerta, animated: true)
        
    }
    
    // Avançar:::
    @IBAction func avancar(_ sender: Any) {
        var tipo:String
        var msg:String
        
        if segRisco.selectedSegmentIndex >= 0 {
            tipo = segRisco.titleForSegment(at: segRisco.selectedSegmentIndex)!
            msg = "Triagem \(tipo), paciente com idade de \(lblIdade.text!) anos, salvo com sucesso."
        } else {
            tipo = ""
            msg = "Por favor, selecione o risco do paciente."
        }
        
        let alerta = UIAlertController(
            title: "Atenção",
            message: msg,
            preferredStyle: UIAlertController.Style.alert)
        
        alerta.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertAction.Style.default,)
        )
        
        present (alerta, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

