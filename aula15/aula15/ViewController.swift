//
//  ViewController.swift
//  aula15
//
//  Created by Usuário Convidado on 29/10/25.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var meuMapa: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 41.890251, longitude: 12.492373)
        annotation.title = "O Coliseu"
        annotation.subtitle = "A casa dos gladiadores"
        meuMapa.addAnnotation(annotation)
        
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 300, longitudinalMeters: 300)
        meuMapa.setRegion(region, animated: true)
        
    }


}

