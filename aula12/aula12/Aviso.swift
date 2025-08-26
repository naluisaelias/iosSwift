//
//  Aviso.swift
//  aula12
//
//  Created by Ana Luísa on 26/08/25.
//

import UIKit

class Aviso: NSObject {
    
    static func exibirAviso(msg: String, sender: UIViewController){
        
        let alerta = UIAlertController(
            title: "Aviso",
            message: msg,
            preferredStyle: UIAlertController.Style.alert)
        
        alerta.addAction(
            UIAlertAction(
                title: "OK",
                style: UIAlertAction.Style.default,
                handler: nil)
        )
        
        sender.present(
            alerta,
            animated: true,
            completion: nil)
    }

}
