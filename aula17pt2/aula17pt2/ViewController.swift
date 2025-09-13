//
//  ViewController.swift
//  aula17pt2
//
//  Created by Ana Luísa on 13/09/25.
//

import UIKit

var app:App!=nil

class ViewController: UIViewController {

    @IBOutlet weak var lblNome: UILabel!
    @IBOutlet weak var minhaImagem: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadApp()
    }
    
    func loadApp(){
        let jsonURLString = "https://itunes.apple.com/br/rss/topfreeapplications/limit=1/json"
        let url = URL(string: jsonURLString)
        
        URLSession.shared.dataTask(with: url!) { data, response, error in
            guard let data = data else {return}
            
            do{
                app = try JSONDecoder().decode(App.self, from: data)
                //print(app.feed.entry.title.label)
                let imagem = self.carregarImagem(urlImage: app.feed.entry.image[0].label)
                DispatchQueue.main.sync {
                    self.lblNome.text = app.feed.entry.title.label
                    self.minhaImagem.image = imagem
                }
            }catch let jsonError{
                print("Erro de serialização do Json", jsonError)
            }
        }
        .resume()
    }
    
    func carregarImagem(urlImage:String)->UIImage?{
        guard let url = URL(string: urlImage)
        else{
            print("Não foi possível criar a URL")
            return nil
        }
        var image:UIImage?=nil
        do{
            let data = try Data(contentsOf: url)
            image = UIImage(data: data)
        }catch{
            print(error.localizedDescription)
        }
        return image
    }


}

