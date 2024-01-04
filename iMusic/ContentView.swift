//
//  ContentView.swift
//  iMusic
//
//  Created by Harmeet Rai on 2023-12-28.
//

import SwiftUI

struct ContentView: View {
    @State var expandedPlayer: Bool = false
    @Namespace var animation: Namespace.ID

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
            if (expandedPlayer) {
                FullPlayer(expandPlayer: $expandedPlayer, animation: animation)
                    .transition(.asymmetric(insertion: .identity, removal: .offset(y: -5)))
            }
        }
    }
    
    @ViewBuilder
    func CustomBottomSheet() -> some View {
        ZStack {
            if expandedPlayer {
                Rectangle()
                    .fill(.clear)
            } else {
                Rectangle()
                    .fill(.ultraThickMaterial)
                    .cornerRadius(15)
                    .overlay{
                        MiniPlayer(expandedPlayer: $expandedPlayer, animation: animation)
                    }.matchedGeometryEffect(id: "BGVIEW", in: animation)
                    .padding(.horizontal, 5)
            }

        }
        .frame(height: 70)
        .offset(y: -55)
    
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
