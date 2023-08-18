//
//  GalaxyRouter.swift
//  Aiachy
//
//  Created by Mert Türedü on 8.08.2023.
//

import SwiftUI

private protocol GalaxyRouterProtocol {
    func navigate(to destination: GalaxyRouterEnum)
}

enum GalaxyRouterEnum {
    case galaxy
    case tune
    case meditation
}

class GalaxyRouterPresenter: ObservableObject, GalaxyRouterProtocol {
    
    @Published var currentView: GalaxyRouterEnum
    
    func navigate(to destination: GalaxyRouterEnum) {
        currentView = destination
    }
    
    init(currentView: GalaxyRouterEnum = .galaxy) {
        self.currentView = currentView
    }
}

struct GalaxyRouter: View {
    
    @EnvironmentObject var aiachyState : AiachyState
    @StateObject var galaxyRouter = GalaxyRouterPresenter()
    let router: HomeRouterPresenter
    
    var body: some View {
        ZStack {
            switch galaxyRouter.currentView {
            case .galaxy:
                GalaxyView(router: galaxyRouter)
            case .tune:
                TuneView(router: galaxyRouter)
            case .meditation:
                MeditationView(router: galaxyRouter)
            }
        }
        .onChange(of: galaxyRouter.currentView, perform: { viewChanged in
            if viewChanged != .galaxy {
                router.isDisabledTabBar = true
            } else {
                router.isDisabledTabBar = false
            }
        })
        .environmentObject(aiachyState)
    }
}

