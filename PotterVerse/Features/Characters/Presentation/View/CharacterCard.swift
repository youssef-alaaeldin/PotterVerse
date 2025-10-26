//
//  CharacterCard.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 21/10/2025.
//

import SwiftUI
import SDWebImageSwiftUI

struct CharacterCard: View {
    var character: CharacterDomain
    
    var body: some View {
            HStack(spacing: 16) {
                WebImage(url: URL(string: character.image))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 135, height: 135)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.primaryGold.opacity(0.3), lineWidth: 1)
                    )
                    .shadow(radius: 4)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text(character.name)
                        .lineLimit(2)
                        .font(.custom(size: 20))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    
                    Text(character.species.uppercased())
                        .font(.subheadline)
                        .foregroundStyle(.text)
                }
                
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .fill(.card)
                    .shadow(radius: 2)
            )
            .goldGlowShadow()
        }
}

//#Preview {
//    ZStack {
//        BackgroundGradient()
//        CharacterCard()
//    }
//}
