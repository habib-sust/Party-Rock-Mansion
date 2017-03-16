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
        
        let p1 = PartyRock(videoTitle: "Ulala", videoImageURL: "Ulala", videoSongURL: "Ulala")
        let p2 = PartyRock(videoTitle: "Ulala", videoImageURL: "Ulala", videoSongURL: "Ulala")
        let p3 = PartyRock(videoTitle: "Ulala", videoImageURL: "Ulala", videoSongURL: "Ulala")
        let p4 = PartyRock(videoTitle: "Ulala", videoImageURL: "Ulala", videoSongURL: "Ulala")
        let p5 = PartyRock(videoTitle: "Ulala", videoImageURL: "Ulala", videoSongURL: "Ulala")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
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


}

