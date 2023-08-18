//
//  HomeRouter.swift
//  Aiachy
//
//  Created by Mert Türedü on 19.05.2023.
// Changed by Mert Türedü on 09.07.2023

import SwiftUI

private protocol RouterProtocol {
    func navigate(to destination: HomeViewsEnum)
}

enum HomeViewsEnum {
    case home
    case mystic
    case galaxy
    case love
    case settings
}

class HomeRouterPresenter: ObservableObject, RouterProtocol {
    
    @Published var currentView: HomeViewsEnum
    @Published var acyAlertEntity: ACYAlertEntity = ACYAlertEntity()
    @Published var isDisabledTabBar: Bool = false
    
    func navigate(to destination: HomeViewsEnum) {
        withAnimation(.spring) {
            currentView = destination
        }
    }
    
    init(currentView: HomeViewsEnum = .home) {
        self.currentView = currentView
    }
}

struct HomeRouter: View {
    
    @EnvironmentObject var aiachyState : AiachyState
    @StateObject var homeRouter = HomeRouterPresenter()
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                switch homeRouter.currentView {
                case .home:
                    HomeView()
                case .mystic:
                    MysticRouter(router: homeRouter)
                case .galaxy:
                    GalaxyRouter(router: homeRouter)
                case .love:
                    LoveRouter(router: homeRouter)
                case .settings:
                    SettingsRouter()
                }
            }
            if !homeRouter.isDisabledTabBar {
                ACYTabBar(router: homeRouter)
            }
        }
        .overlay{ 
            if homeRouter.acyAlertEntity.isShowingAlert {
                ACYAlertView(acyAlertEntity: homeRouter.acyAlertEntity)
            }
        }
        .environmentObject(aiachyState)
    }
}

