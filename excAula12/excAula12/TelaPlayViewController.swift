//
//  TelaPlayViewController.swift
//  excAula12
//
//  Created by Ana Luísa on 30/08/25.
//

import UIKit

class TelaPlayViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    var img: String = ""
    @IBOutlet weak var lblMusic: UILabel!
    var music: String = ""
    @IBOutlet weak var lblAlbum: UILabel!
    var album: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: img)
        lblMusic.text = music
        lblAlbum.text = album
    }

}
