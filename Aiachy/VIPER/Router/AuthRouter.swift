//
//  AuthRouter.swift
//  Aiachy
//
//  Created by Mert Türedü on 18.05.2023.
//

import SwiftUI

private protocol RouterProtocol {
    func navigate(to destination: AuthViews)
}

enum AuthViews {
    case onboardingView
    case privacyPolicyView
    case loginView
    case zodiacSelectionView
    case registerView
    case ascendantSelectionView
    case attentionView
}

class AuthRouterPresenter: ObservableObject, RouterProtocol {
    
    @Published var isUserComplateAuthCompletion: Bool
    @Published var currentView: AuthViews
    
    init(isUserComplateAuthCompletion: Bool = false,
        currentView: AuthViews = .onboardingView) {
        self.isUserComplateAuthCompletion = isUserComplateAuthCompletion
        self.currentView = currentView
    }
    
    func navigate(to destination: AuthViews) {
        withAnimation(.interactiveSpring()) {
            currentView = destination
        }
    }
}

struct AuthRouter: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    @StateObject var authRouter = AuthRouterPresenter()
    
    var body: some View {
        ZStack {
            AuthBackground()
            switch authRouter.currentView {
            case .onboardingView:
                OnboardingView(router: authRouter)
            case .privacyPolicyView:
                PrivacyPolicyView(router: authRouter)
            case .loginView:
                LoginView(router: authRouter)
            case .zodiacSelectionView:
                ZodiacSelectionView(router: authRouter)
            case .registerView:
                RegisterView(router: authRouter)
            case .ascendantSelectionView:
                AscendantSelectionView(router: authRouter)
            case .attentionView:
                AttentionView(router: authRouter)
            }
        }
        .fullScreenCover(isPresented: $authRouter.isUserComplateAuthCompletion, content: {
            HomeRouter()
        })
        .environmentObject(aiachyState)
    }
}
