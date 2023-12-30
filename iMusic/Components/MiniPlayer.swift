//
//  File.swift
//  iMusic
//
//  Created by Harmeet Rai on 2023-12-29.
//

import SwiftUI

@ViewBuilder
func CustomBottomSheet() -> some View {
    ZStack {
        Rectangle()
            .fill(.ultraThickMaterial)
            .cornerRadius(15)
            .overlay(MiniPlayer())
            .padding(.horizontal, 5)
    }
    .frame(height: 70)
    .offset(y: -55)
}

struct MiniPlayer: View {
    var body: some View {
        HStack(spacing: 0) {
            GeometryReader {
                let size = $0.size
                
                Image("AlbumCover")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: size.width, height: size.height)
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                
            }
            .frame(width: 50, height: 50)
            .padding(.leading, 10)
            Text("Test")
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
    }
}
