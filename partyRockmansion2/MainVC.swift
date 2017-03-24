//
//  ViewController.swift
//  partyRockmansion2
//
//  Created by Habibur Rahman on 3/16/17.
//  Copyright © 2017 Habibur Rahman. All rights reserved.
//

import UIKit

class MainVC: UIViewController , UITableViewDataSource , UITableViewDelegate{
    
    

    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let p1 = PartyRock(videoTitle: "Anmone", videoImageURL: "https://i.ytimg.com/vi/3I3l-x93kOY/hqdefault.jpg", videoSongURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3I3l-x93kOY\" frameborder=\"0\" allowfullscreen></iframe>")
        
       let p2 = PartyRock(videoTitle: "Trooper", videoImageURL: "https://upload.wikimedia.org/wikipedia/en/7/71/The_Trooper_song_cover.jpg", videoSongURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/X4bgXH3sJ2Q\" frameborder=\"0\" allowfullscreen></iframe>")
        
        let p3 = PartyRock(videoTitle: "High Hopes", videoImageURL: "https://s-media-cache-ak0.pinimg.com/736x/a6/1c/16/a61c1688e8a85b6f3b553be101c6203f.jpg", videoSongURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/HX_du6Gcp1w\" frameborder=\"0\" allowfullscreen></iframe>")
        let p4 = PartyRock(videoTitle: "Stairway To Heaven", videoImageURL: "https://i.ytimg.com/vi/fOEQTJV_3-w/hqdefault.jpg", videoSongURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9Q7Vr3yQYWQ\" frameborder=\"0\" allowfullscreen></iframe>")
        let p5 = PartyRock(videoTitle: "Yellow Brick road", videoImageURL: "https://fanart.tv/fanart/music/69837400-8e31-4949-aac2-00b46b4df126/albumcover/a-book-like-this-5214d5fbeabb5.jpg", videoSongURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/fTF-RadkIKo\" frameborder=\"0\" allowfullscreen></iframe>")
        
        let p6 = PartyRock(videoTitle: "Bhoboghure", videoImageURL: "https://i.ytimg.com/vi/2z_3N16Cwmc/hqdefault.jpg", videoSongURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2z_3N16Cwmc\" frameborder=\"0\" allowfullscreen></iframe>")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        partyRocks.append(p6)
        tableView.delegate = self
        tableView.dataSource = self
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as?PartyCell{
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            return cell
        }else {
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let partyRock = partyRocks[indexPath.row]
        
        performSegue(withIdentifier: "VideoPlayVC", sender: partyRock)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let desitination = segue.destination as? VideoPlayVC{
            if let party = sender as? PartyRock{
                
                desitination.partyRock = party
            }
        }
    }
    
    
    @IBAction func mostViewsButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "MostViewVC", sender: nil)
    }
    
    @IBAction func eventsbuttonPressed(_ sender: Any) {
        
       performSegue(withIdentifier: "EventVC", sender: nil)
    }

}

