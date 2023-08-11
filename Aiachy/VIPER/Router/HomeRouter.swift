//
//  HomeRouter.swift
//  Aiachy
//
//  Created by Mert Türedü on 19.05.2023.
// Changed by Mert Türedü on 09.07.2023

import SwiftUI

private protocol RouterProtocol {
    func navigate(to destination: HomeViews)
}

enum HomeViews {
    case home
    case mystic
    case galaxy
    case love
    case settings
}

class HomeRouterPresenter: ObservableObject, RouterProtocol {
    
    @Published var isUserLogout: Bool
    @Published var currentView: HomeViews
    
    func navigate(to destination: HomeViews) {
        currentView = destination
    }
    
    init(isUserLogout: Bool = false,
         currentView: HomeViews = .home) {
        self.isUserLogout = isUserLogout
        self.currentView = currentView
    }
}

struct HomeRouter: View {
    
    @EnvironmentObject var aiachyState : AiachyState
    @ObservedObject var authRouter = HomeRouterPresenter()
    
    var body: some View {
        ZStack {
            switch authRouter.currentView {
            case .home:
                HomeView(router: authRouter)
            case .mystic:
                MysticView()
            case .galaxy:
                GalaxyView()
            case .love:
                LoveView()
            case .settings:
                SettingsView()
            }
        }
        .fullScreenCover(isPresented: $authRouter.isUserLogout, content: {
            SplashView()
        })
        .environmentObject(aiachyState)
    }
}
