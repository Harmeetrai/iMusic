//
//  ContentView.swift
//  iMusic
//
//  Created by Harmeet Rai on 2023-12-28.
//

import SwiftUI

struct ContentView: View {
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
    }
    
//    custom bottom sheet
    @ViewBuilder
    func CustomBottomSheet() -> some View {
        ZStack {
            Rectangle()
                .fill(.ultraThickMaterial)
                .cornerRadius(20)
        }
        .frame(height: 70)
        .offset(y: -55)

    }
}

#Preview {
    ContentView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
