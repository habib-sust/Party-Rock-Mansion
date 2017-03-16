//
//  PartyRock.swift
//  partyRockmansion2
//
//  Created by Habibur Rahman on 3/16/17.
//  Copyright © 2017 Habibur Rahman. All rights reserved.
//

import Foundation

class PartyRock {
    
    private var _videoTitle: String?
    private var _videoImageURL: String?
    private var _videoSongURL: String?
    
    var videoTitle: String{
        return _videoTitle!
    }
    
    var VideoImageURL: String{
        return _videoSongURL!
    }
    
    var videoSongURL: String{
        return _videoSongURL!
    }
    
    init(videoTitle: String, videoImageURL: String, videoSongURL: String) {
        _videoTitle = videoTitle
        _videoSongURL = videoSongURL
        _videoImageURL = _videoSongURL
    }
}
