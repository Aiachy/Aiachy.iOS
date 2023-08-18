//
//  LoveRouter.swift
//  Aiachy
//
//  Created by Mert Türedü on 8.08.2023.
//
import SwiftUI

private protocol RouterProtocol {
    func navigate(to destination: LoveRouterEnum)
}

enum LoveRouterEnum {
    case love
}

class LoveRouterPresenter: ObservableObject, RouterProtocol {
    
    @Published var currentView: LoveRouterEnum
    
    func navigate(to destination: LoveRouterEnum) {
        currentView = destination
    }
    
    init(currentView: LoveRouterEnum = .love) {
        self.currentView = currentView
    }
}

struct LoveRouter: View {
    
    @EnvironmentObject var aiachyState : AiachyState
    @StateObject var loveRouter = LoveRouterPresenter()
    let router: HomeRouterPresenter
    
    var body: some View {
        ZStack {
            switch loveRouter.currentView {
            case .love:
                LoveView(router: router)
            }
        }
        .environmentObject(aiachyState)
    }
}
