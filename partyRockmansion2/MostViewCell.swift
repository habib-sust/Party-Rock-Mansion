//
//  MostViewCell.swift
//  partyRockmansion2
//
//  Created by Habibur Rahman on 3/24/17.
//  Copyright © 2017 Habibur Rahman. All rights reserved.
//

import UIKit

class MostViewCell: UITableViewCell {

    @IBOutlet weak var mostViewImagePreview: UIImageView!
    @IBOutlet weak var mostViewSongTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateMostViewUI(partyRock: PartyRock){
        
       mostViewSongTitle.text = partyRock.videoTitle
        
        let url = URL(string: partyRock.videoImageURL)!
        
        DispatchQueue.global().async {
            do{
                let data = try Data(contentsOf: url)
                
                DispatchQueue.global().sync {
                    self.mostViewImagePreview.image = UIImage(data: data)
                }
            }catch{
                
                //handle error
            }
        }
        
    }

}
