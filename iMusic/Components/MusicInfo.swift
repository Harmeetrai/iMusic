//
//  MusicInfo.swift
//  iMusic
//
//  Created by Harmeet Rai on 2024-01-03.
//

import SwiftUI

struct MusicInfo {
    let title: Text
    let albumCover: Image
    
    init(title: Text, albumCover: Image) {
        self.title = title
        self.albumCover = albumCover
    }
}
