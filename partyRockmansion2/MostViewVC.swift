//
//  MostViewVC.swift
//  partyRockmansion2
//
//  Created by Habibur Rahman on 3/24/17.
//  Copyright © 2017 Habibur Rahman. All rights reserved.
//

import UIKit

class MostViewVC: UIViewController ,UITableViewDataSource , UITableViewDelegate{

    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let p1 = PartyRock(videoTitle: "Train", videoImageURL: "https://i.ytimg.com/vi/0UHwkfhwjsk/hqdefault.jpg", videoSongURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/0UHwkfhwjsk\" frameborder=\"0\" allowfullscreen></iframe>")
        
        let p2 = PartyRock(videoTitle: "High Hopes", videoImageURL: "https://lastfm-img2.akamaized.net/i/u/300x300/6af6a9a0d246464f976bef5193823322.jpg", videoSongURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/HX_du6Gcp1w\" frameborder=\"0\" allowfullscreen></iframe>")
        
        let p3 = PartyRock(videoTitle: "Sultans Of Swing", videoImageURL: "https://i.ytimg.com/vi/xo-J1wf2KHc/hqdefault.jpg", videoSongURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/6jxsnIRpy2E\" frameborder=\"0\" allowfullscreen></iframe>")
        let p4 = PartyRock(videoTitle: "Stairway To Heaven", videoImageURL: "https://i.ytimg.com/vi/fOEQTJV_3-w/hqdefault.jpg", videoSongURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9Q7Vr3yQYWQ\" frameborder=\"0\" allowfullscreen></iframe>")
        let p5 = PartyRock(videoTitle: "Yellow Brick road", videoImageURL: "https://fanart.tv/fanart/music/69837400-8e31-4949-aac2-00b46b4df126/albumcover/a-book-like-this-5214d5fbeabb5.jpg", videoSongURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/fTF-RadkIKo\" frameborder=\"0\" allowfullscreen></iframe>")
        
        let p6 = PartyRock(videoTitle: "Obocheton", videoImageURL: "https://i.ytimg.com/vi/R7v3x4IUjOQ/hqdefault.jpg", videoSongURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EeeObmCWLKA\" frameborder=\"0\" allowfullscreen></iframe>")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        partyRocks.append(p6)
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return partyRocks.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MostViewCell", for: indexPath) as?MostViewCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateMostViewUI(partyRock: partyRock)
            
            return cell
            
        }else{
        
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        
        performSegue(withIdentifier: "VideoPlayVC", sender: partyRock)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as?VideoPlayVC{
            
            if let party = sender as?PartyRock{
                destination.partyRock = party
            }
        }
        
    }
    
    @IBAction func eventsButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "EventVC", sender: nil)
    }

    @IBAction func topViewsButtonPressed(_ sender: Any) {
        
        
        performSegue(withIdentifier: "MainVC", sender: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
