//
//  File.swift
//  iMusic
//
//  Created by Harmeet Rai on 2023-12-29.
//

import SwiftUI

struct MiniPlayer: View {
    @Binding var expandedPlayer: Bool
    var animation: Namespace.ID
    @Binding var musicInfo: MusicInfo

    var body: some View {
        if !expandedPlayer {
            HStack(spacing: 0) {
            ZStack {
                    GeometryReader {
                        let size = $0.size
                        
                        musicInfo.albumCover
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: size.width, height: size.height)
                            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        
                    }
                    .matchedGeometryEffect(id: "ARTWORK", in: animation)
                
            }
            .frame(width: 50,height: 50)
            .padding(.leading, 10)
            
            musicInfo.title
                .fontWeight(.semibold)
                .lineLimit(1)
                .padding(.horizontal,15)
            Spacer()
            Button{
            } label: {
                Image(systemName: "pause.fill")
                    .resizable()
                    .frame(width: 20, height: 20)
            }
            .padding(.trailing, 20)
            
            Button{
            } label: {
                Image(systemName: "forward.fill")
                    .resizable()
                    .frame(width: 22, height: 20)
            }
            .padding(.trailing, 20)
        }
            .foregroundColor(.primary)
            .frame(height: 70)
            .contentShape(Rectangle())
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.3)){
                    expandedPlayer = true
                }
            }
    }
    }
}
