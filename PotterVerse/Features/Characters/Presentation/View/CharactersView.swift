//
//  CharactersView.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 21/10/2025.
//

import SwiftUI

struct CharactersView: View {
    @StateObject private var viewModel: CharactersViewModel
    
    init() {
        self._viewModel = StateObject(wrappedValue: .init())
    }
    
    var body: some View {
        ZStack {
            BackgroundGradient()
            
            VStack {
                HeaderView(title: "Characters") {
                    
                }
                ScrollView {
                    ForEach(viewModel.characters ?? [], id: \.index) { character in
                        LazyVStack {
                            CharacterCard(character: character)
                                .padding(.vertical, 10)
                        }
                        .redactedLoading(isLoading: $viewModel.isCharactersLoading)
                    }
                }
                .padding(.top, 20)
                
                Spacer()
            }
            
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    CharactersView()
}
