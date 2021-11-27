//
//  VideoModel.swift
//  Africa
//
//  Created by Victor Ughonu on 27/11/2021.
//

import SwiftUI


struct Video : Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    
    var thumbnail: String {
        "video-\(id)"
    }
}
