//
//  MusicaTableViewController.swift
//  excAula12
//
//  Created by Ana Luísa on 28/08/25.
//

import UIKit

class MusicaTableViewController: UITableViewController {
    
    // MARK: Músicas, álbuns e capas
    
    // Músicas
    var music: [String] = [
        "Our Song",
        "The Way I Loved You",
        "Better Than Revenge",
        "I Knew You Were Trouble",
        "Wonderland",
        "I Did Something Bad",
        "The Archer",
        "Cardigan",
        "Champagne Problems",
        "Mr. Perfectly Fine",
        "All Too Well (10 Minute Version)",
        "Anti-Hero",
        "I Can See You",
        "Now That We Don't Talk",
        "Guilty as Sin?"
    ]
    
    // Álbuns
    var album: [String] = [
        "Taylor Swift • 2006",
        "Fearless • 2008",
        "Speak Now • 2010",
        "Red • 2012",
        "1989 • 2014",
        "Reputation • 2017",
        "Lover • 2019",
        "Folklore • 2020",
        "Evermore • 2020",
        "Fearless (Taylor's Version) • 2021",
        "Red (Taylor's Version) • 2021",
        "Midnights • 2022",
        "Speak Now (Taylor's Version) • 2023",
        "1989 (Taylor's Version) • 2023",
        "The Tortured Poets Department • 2024"
    ]
    
    // Capas
    var cover: [String] = [
        "taylor_swift.png",
        "fearless.png",
        "speak_now.png",
        "red.png",
        "1989.png",
        "reputation.png",
        "lover.png",
        "folklore.png",
        "evermore.png",
        "fearless_taylors.png",
        "red_taylors.png",
        "midnights.png",
        "speak_now_taylors.png",
        "1989_taylors.png",
        "ttpd.png",
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return music.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        cell.textLabel?.text = music[indexPath.row]
        cell.detailTextLabel?.text = album[indexPath.row]
        cell.imageView?.image = UIImage(named: cover[indexPath.row])

        return cell
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            music.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let telaPlay = segue.destination as! TelaPlayViewController
        
        telaPlay.music = music[tableView.indexPathForSelectedRow!.row]
        telaPlay.album = album[tableView.indexPathForSelectedRow!.row]
        telaPlay.img   = cover[tableView.indexPathForSelectedRow!.row]
        
    }

    
    // Metódo clicar na célula
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Vai pra outra tela:::
        performSegue(withIdentifier: "musicaParaPlaySegue", sender: nil)
    }

}
