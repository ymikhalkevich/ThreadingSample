//
//  Thread.swift
//  MultiThreadingSample
//
//  Created by Yury Mikhalkevich on 8/20/18.
//  Copyright © 2018 Yury Mikhalkevich. All rights reserved.
//

import Foundation

class SimpleThread {
//var thread = pthread_t(bitPattern: 0)
//var attr = pthread_attr_t()
//
    func create(buttonId: Int) {
        var getImageFromUrlQueue = DispatchQueue(label: "GetUrlImageQueue",
                                                 qos: .userInitiated)
        var imageUrl: URL? = nil
        
        getImageFromUrlQueue.async {
            switch buttonId {
            case 1:
                imageUrl = URL(fileURLWithPath: "https://www.wallpapermania.eu/wallpaper/beautiful-space-view-big-moon-in-the-night")
            default:
                break
            }
            
            let fetch = NSData(contentsOf: imageUrl! as URL)
            
            if let imageData = fetch {}
        }
        
    }
    
    
    
}
