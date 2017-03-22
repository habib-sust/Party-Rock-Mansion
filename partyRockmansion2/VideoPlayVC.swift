//
//  VideoPlayVC.swift
//  partyRockmansion2
//
//  Created by Habibur Rahman on 3/16/17.
//  Copyright © 2017 Habibur Rahman. All rights reserved.
//

import UIKit

class VideoPlayVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var videoTitle: UILabel!
    private var _partyRock: PartyRock!
    
    var partyRock:PartyRock{
        
        get{
            return _partyRock
        }set{
            _partyRock = newValue
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videoTitle.text = partyRock.videoTitle
        
        webView.loadHTMLString(partyRock.videoSongURL, baseURL: nil)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
