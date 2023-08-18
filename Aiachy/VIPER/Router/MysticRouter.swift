//
//  MysticRouter.swift
//  Aiachy
//
//  Created by Mert Türedü on 8.08.2023.
//

import SwiftUI

private protocol MysticRouterProtocol {
    func navigate(to destination: MysticRouterEnum)
}

enum MysticRouterEnum {
    case mystic
}

class MysticRouterPresenter: ObservableObject, MysticRouterProtocol {
    
    @Published var currentView: MysticRouterEnum
    
    func navigate(to destination: MysticRouterEnum) {
        currentView = destination
    }
    
    init(currentView: MysticRouterEnum = .mystic) {
        self.currentView = currentView
    }
}

struct MysticRouter: View {
    
    @EnvironmentObject var aiachyState : AiachyState
    @StateObject var mysticRouter = MysticRouterPresenter()
    let router: HomeRouterPresenter
    
    var body: some View {
        ZStack {
            switch mysticRouter.currentView {
            case .mystic:
                MysticView()
            }
        }
        .environmentObject(aiachyState)
    }
}


