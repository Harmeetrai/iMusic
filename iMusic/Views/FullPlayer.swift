//
//  FullPlayer.swift
//  iMusic
//
//  Created by Harmeet Rai on 2023-12-30.
//

import SwiftUI

struct FullPlayer: View {
    @Binding var expandPlayer: Bool
    var animation: Namespace.ID
    @Binding var musicInfo: MusicInfo
    @State private var animateContent: Bool = false
    var body: some View {
        GeometryReader {
            let size = $0.size
            let safeArea = $0.safeAreaInsets
            
            ZStack {
                Rectangle()
                    .fill(.ultraThickMaterial)
                    .matchedGeometryEffect(id: "BGVIEW", in: animation)
                VStack(spacing: 15) {
                    Capsule()
                        .fill(.gray)
                        .frame(width: 40,height: 5)
                    
    //                Artwork
                    GeometryReader {
                        let size = $0.size
                        musicInfo.albumCover
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: size.width, height: size.height)
                            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    }
                    .frame(height: size.width-50)
                    .matchedGeometryEffect(id: "ARTWORK", in: animation)
                }
                .padding(.top, safeArea.top + (safeArea.bottom == 0 ? 10 : 0))
                .padding(.bottom,safeArea.bottom == 0 ? 10 : safeArea.bottom)
                .padding(.horizontal, 25)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .top)
            }
            .ignoresSafeArea(.container,edges: .all)
        }
        .onAppear{
            withAnimation(.easeInOut(duration: 0.5)){
                animateContent = true
            }
        }
    }
}

struct FullPlayer_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
