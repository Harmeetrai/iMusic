//
//  FullPlayer.swift
//  iMusic
//
//  Created by Harmeet Rai on 2023-12-30.
//

import SwiftUI

struct FullPlayer: View {
    @Binding var expandedPlayer: Bool
    var animation: Namespace.ID
    var body: some View {
        GeometryReader {
            let size = $0.size
            let safeArea = $0.safeAreaInsets
            
            ZStack {
                Capsule()
                    .fill(.gray)
                    .frame(width: 40,height: 5)
            }
            .padding(.top, safeArea.top + (safeArea.bottom == 0 ? 10 : 0))
            .padding(.bottom,safeArea.bottom == 0 ? 10 : safeArea.bottom)
            .padding(.horizontal, 25)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .top)
            .ignoresSafeArea(.container,edges: .all)
        }
    }
}

struct FullPlayer_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
