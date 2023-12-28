//
//  HomeView.swift
//  iMusic
//
//  Created by Harmeet Rai on 2023-12-28.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            Text("On Rotation")
            Text("Loved Playlists")
            Text("Favourite Albums")
            Text("Recently Played")
            Text("Recently Added")
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeView()
}
