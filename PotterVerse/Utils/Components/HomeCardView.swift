//
//  HomeCardView.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 20/10/2025.
//

import SwiftUI

struct HomeCardView: View {
    var title: String
    var imageName: String
    var action: () -> Void
    
    var body: some View {
        VStack(spacing: 16) {
            Circle()
                .fill(.primaryGold.opacity(0.2))
                .frame(width: 70, height: 70)
                .overlay {
                    Image(systemName: imageName)
                        .foregroundStyle(.primaryGold)
                        .font(.system(size: 25))
                }
                
            Text(title)
                .font(.cardTitle)
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
        .padding(20)
        .background(.card)
        .cornerRadius(20)
        .goldGlowShadow()
        .onTapGesture {
            action()
            print("Tapped")
        }
    }
}

#Preview {
    ZStack {
        BackgroundGradient()
        HomeCardView(title: "Characters", imageName: "person.2") {
            
        }
    }
}
