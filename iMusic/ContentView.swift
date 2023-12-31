//
//  ContentView.swift
//  iMusic
//
//  Created by Harmeet Rai on 2023-12-28.
//

import SwiftUI

struct ContentView: View {
    @State private var expandedPlayer: Bool = true
    @Namespace private var animation
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            LibraryView()
                .tabItem {
                    Image(systemName: "books.vertical.fill")
                    Text("Library")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
        }
        .accentColor(.red)
        .safeAreaInset(edge:.bottom) {
            CustomBottomSheet()
        }
        .overlay {
            if expandedPlayer {
                FullPlayer(expandedPlayer: $expandedPlayer, animation: animation)
                    .transition(.asymmetric(insertion: .identity, removal: .offset(y: -5)))
            }
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
