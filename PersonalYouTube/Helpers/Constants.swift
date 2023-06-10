//
//  Constants.swift
//  PersonalYouTube
//
//  Created by Maxence Bekier on 15/07/2020.
//  Copyright © 2020 Maxence Bekier. All rights reserved.
//

import Foundation

struct Constants {
    
    static var API_KEY = "AIzaSyDyga_qDktCFnBfL-iMEl8lQ49sig8jlmw"
    static var PLAYLIST_ID = "UUJwpqmqrlzJN4ujHiDHmwTg"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    static var VIDEOCELL_ID = "VideosCell"
    static var YT_EMBED_URL = "https://www.youtube.com/embed/"
    
}
