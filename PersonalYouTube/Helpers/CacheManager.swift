//
//  CacheManager.swift
//  PersonalYouTube
//
//  Created by Maxence Bekier on 15/07/2020.
//  Copyright © 2020 Maxence Bekier. All rights reserved.
//

import Foundation

class CacheManager {
    
    static var cache = [String:Data]()
    
    static func setVideoCache(_ url:String, _ data:Data?) {
        
        // Store the image data and use the url as the key
        cache[url] = data
    }
    
    static func getVideoCache(_ url:String) -> Data? {
        
        return cache[url]
    }
    
}
