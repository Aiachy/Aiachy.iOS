//
//  SettingsRouter.swift
//  Aiachy
//
//  Created by Mert Türedü on 8.08.2023.
//

import SwiftUI

private protocol SettingsRouterProtocol {
    func navigate(to destination: SettingsRouterEnum)
}

enum SettingsRouterEnum {
    case Emptyy
}

class SettingsRouterPresenter: ObservableObject, SettingsRouterProtocol {
    
    @Published var currentView: SettingsRouterEnum
    
    func navigate(to destination: SettingsRouterEnum) {
        currentView = destination
    }
    
    init(currentView: SettingsRouterEnum = .Emptyy) {
        self.currentView = currentView
    }
}

struct SettingsRouter: View {
    
    @EnvironmentObject var aiachyState : AiachyState
    @StateObject var settingsRouter = SettingsRouterPresenter()
    
    var body: some View {
        ZStack {
            switch settingsRouter.currentView {
            case .Emptyy:
                EmptyView()
            }
        }
        .environmentObject(aiachyState)
    }
}

