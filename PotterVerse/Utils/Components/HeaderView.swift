//
//  HeaderView.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 26/10/2025.
//

import SwiftUI

struct HeaderView: View {
    var title: String
    var action: () -> Void
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "arrow.left")
                .foregroundStyle(.white)
                .onTapGesture {
                    action()
                }
            
            Spacer()
            
            Text(title)
                .font(.custom(size: 33))
                .foregroundStyle(.primaryGold)
            
            Spacer()
        }
        .padding()
        .background(.card)
        .overlay(
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(.primaryGold)
                .frame(maxHeight: .infinity, alignment: .bottom),
            alignment: .bottom
        )
    }
}

#Preview {
    HeaderView(title: "header") {
        
    }
}
