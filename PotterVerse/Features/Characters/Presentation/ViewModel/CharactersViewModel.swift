//
//  CharactersViewModel.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 26/10/2025.
//

import Foundation
import Combine
import Factory

class CharactersViewModel: ObservableObject {
    @Injected(\.getCharatersUseCase) private var getCharatersUseCase
    @Injected(\.appState) private var appState
    
    @Published var characters: [CharacterDomain]? = []
    @Published var isCharactersLoading: Bool = false
    @Published var charactersLoadingState: LoadingState<[CharacterDomain]> = .loading
    
    var myTasks: [Task<Void, Never>] = []
    var cancellables = Set<AnyCancellable>()
    
    func cancelTasks() {
        myTasks.forEach { $0.cancel() }
    }
    
    init() {
        subscribeToCharacters()
        fetchCharacters()
    }
    
    deinit {
        cancelTasks()
    }
}


// MARK: Subscribe To Publishers
extension CharactersViewModel {
    func subscribeToCharacters() {
        $charactersLoadingState
            .receive(on: DispatchQueue.main)
            .sink { [weak self] state in
                guard let self = self else { return }
                switch state {
                    case .loading:
                        self.isCharactersLoading = true
                        self.characters = CharacterDomain.mockList
                    case .loaded(let data):
                        self.isCharactersLoading = false
                        self.characters = data
                    case .error:
                        self.isCharactersLoading = false
                        self.characters = nil
                }
            }
            .store(in: &cancellables)
    }
}

// MARK: - API Calls
extension CharactersViewModel {
    func fetchCharacters() {
        charactersLoadingState = .loading
        
        let charactersTask = Task {
            do {
                let result = try await getCharatersUseCase.execute(charactersRequest: CharactersRequest())
                await MainActor.run {
                    charactersLoadingState = .loaded(result)
                    print("Joe true")
                }
                
            } catch {
                await MainActor.run {
                    charactersLoadingState = .error
                    print("Error")
                }
            }
        }
        myTasks.append(charactersTask)
    }
}

// MARK: - Navgiation
extension CharactersViewModel {
    func pop() {
        appState.activeRouter.pop()
    }
}
