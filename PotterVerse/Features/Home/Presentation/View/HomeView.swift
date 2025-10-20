//
//  HomeView.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 20/10/2025.
//

import SwiftUI

struct HomeView: View {
    
    private var columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ZStack {
            BackgroundGradient()
            
            VStack {
                title
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 16) {
                        HomeCardView(title: "Characters", imageName: "person.2") {
                            
                        }
                        HomeCardView(title: "Spells", imageName: "wand.and.sparkles") {
                            
                        }
                        
                        HomeCardView(title: "Houses", imageName: "shield") {
                            
                        }
                        
                        HomeCardView(title: "Books", imageName: "book") {
                            
                        }
                        
                        HomeCardView(title: "Potions", imageName: "sparkles") {
                            
                        }
                    }
                    .padding()
                }
                Spacer()
            }
        }
    }
}

// MARK: - Components

extension HomeView {
    private var title: some View {
        VStack(spacing: 0) {
            Text("Welcome To the")
                .font(.heading2)
                .multilineTextAlignment(.center)
                .foregroundStyle(.primaryGold)
            
            Text("Wizrding")
                .font(.heading3)
                .multilineTextAlignment(.center)
                .foregroundStyle(.primaryGold)
                .shadow(color: .primaryGold, radius: 10 , x: 0, y: 0)
            
            Text("World")
                .font(.heading3)
                .multilineTextAlignment(.center)
                .foregroundStyle(.primaryGold)
                .shadow(color: .primaryGold, radius: 10 , x: 0, y: 0)
        }
    }
}

#Preview {
    HomeView()
}
