//
//  ProfileRouter.swift
//  Aiachy
//
//  Created by Mert Türedü on 8.08.2023.
//

import SwiftUI

private protocol SettingsRouterProtocol {
    func navigate(to destination: ProfileRouterEnum)
}

enum ProfileRouterEnum {
    case settings
    case aicyCash
    case oracle
    case language
    case theme
}

class ProfileRouterPresenter: ObservableObject, SettingsRouterProtocol {
    
    @Published var currentView: ProfileRouterEnum
    @Published var isLogout: Bool
    
    func navigate(to destination: ProfileRouterEnum) {
        withAnimation(.linear) {
            currentView = destination
        }
    }
    
    init(currentView: ProfileRouterEnum = .settings,
         isLogout: Bool = false ) {
        self.currentView = currentView
        self.isLogout = isLogout
    }
}

struct ProfileRouter: View {
    
    @EnvironmentObject var aiachyState : AiachyState
    @StateObject var presenter = ProfileRouterPresenter()
    let homeRouter: HomeRouterPresenter
    
    var body: some View {
        ZStack {
            switch presenter.currentView {
            case .settings:
                ProfileView(aiachy: aiachyState, homeRouter: homeRouter, router: presenter)
            case .aicyCash:
                AicyCashView(aiachy: aiachyState, router: presenter)
            case .oracle:
                OracleView(aiachy: aiachyState, router: presenter)
            case .language:
                LanguageView(aiachy: aiachyState, router: presenter)
            case .theme:
                ThemeView(aiachy: aiachyState, router: presenter)
            }
        }

        .fullScreenCover(isPresented: $presenter.isLogout, content: {
            SplashView()
        })
        .onChange(of: presenter.currentView, perform: { viewChanged in
            withAnimation(.linear) {
                if viewChanged != .settings {
                    homeRouter.isDisabledTabBar = true
                } else {
                    homeRouter.isDisabledTabBar = false
                }
            }
        })
        .environmentObject(aiachyState)
    }
}

