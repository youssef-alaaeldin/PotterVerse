//
//  AppState.swift
//  Fashly
//
//  Created by Yousuf Abdelfattah on 30/07/2025.
//

import SwiftUI
import Factory
import Combine

enum RootViewType: String, CaseIterable {
    case onboarding
    case bottomTabs
}

class AppState: ObservableObject {
    @Published var rootView: Screen = .onboarding
    @Published var currentView: RootViewType = .onboarding
    @Published var rootViewID: UUID = UUID() //To Reset The views
    @Published var selectedTab = Tabs.home {
        willSet{
            if(selectedTab == newValue){
                resetTab()
            }
        }
    }
    @Published var homeCoordinator: NavRouter = NavRouter()
    @Published var searchCoordinator: NavRouter = NavRouter()
    @Published var favoritesCoordinator: NavRouter = NavRouter()
    @Published var profileCoordinator: NavRouter = NavRouter()
    
    public var activeRouter: NavRouter {
        switch selectedTab {
        case .home:
            return homeCoordinator
        case .search:
            return searchCoordinator
        case .favorites:
            return favoritesCoordinator
        case .profile:
            return profileCoordinator
        }
    }
    
    private var myTasks: [Task<Void, Never>] = []
    private var cancellables: Set<AnyCancellable> = []
    
    init() {
        setupBindings()
    }
    
    deinit {
        cancelTasks()
    }
    
    func cancelTasks() {
        myTasks.forEach({ $0.cancel() })
        myTasks = []
    }
}

//MARK: - Handle Tabs Visibility -
extension AppState {
    private func setupBindings() {
        Publishers.CombineLatest4(
            $selectedTab,
            homeCoordinator.$path,
            searchCoordinator.$path,
            favoritesCoordinator.$path
        )
        .combineLatest(profileCoordinator.$path)
        .map { (combined, profilePath) -> Bool in
            let (selectedTab, homePath, searchPath, favoritesPath) = combined
            
            switch selectedTab {
            case .home:
                return homePath.isEmpty
            case .search:
                return searchPath.isEmpty
            case .favorites:
                return favoritesPath.isEmpty
            case .profile:
                return profilePath.isEmpty
            }
        }
        .removeDuplicates()
        .sink { isVisible in
            DispatchQueue.main.async {
                UITabBar.setVisibility(isVisible)
            }
        }
        .store(in: &cancellables)
    }
}

//MARK: - Handle App Tab Bar -

extension AppState {
    func resetTab(){
        switch selectedTab{
        case .home:
            homeCoordinator.popToRoot()
        case .search:
            searchCoordinator.popToRoot()
        case .favorites:
            favoritesCoordinator.popToRoot()
        case .profile:
            profileCoordinator.popToRoot()
        }
    }
}

//MARK: - Handle App Base Navigation -

//extension AppState {
//    
//    func navigateToHomeAfterSignedIn() {
//        getCurrentUser()
//        selectedTab = .home
//        rootViewID = UUID()
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [weak self] in
//            guard let self = self else {return}
//            withAnimation {
//                self.currentView = .bottomTabs
//            }
//        }
//    }
//    func navigateToAuthenticationAfterSignedOut() {
//        rootViewID = UUID()
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [weak self] in
//            guard let self = self else { return }
//            withAnimation {
//                self.currentView = .login
//            }
//        }
//    }
//}


//MARK: - Handle App DeepLink -

//extension AppState {
//    func clearUserDataAfterSignedOut() {
//        DispatchQueue.main.async { [weak self] in
//            guard let self = self else { return }
//            userToken.removeAll()
//            userCompletedAuthentication = false
//            currentUser = nil
//        }
//    }
//}

// MARK: - Dependices
extension Container {
    var appState: Factory<AppState> {
        Factory(self) { AppState() }.singleton
    }
}
