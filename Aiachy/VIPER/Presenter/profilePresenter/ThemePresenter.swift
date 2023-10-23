//
//  ThemePresenter.swift
//  Aiachy
//
//  Created by Mert Türedü on 22.08.2023.
//

import Foundation
//MARK: ThemePresenter - protocol - HandlerProtocol
private protocol HandlerProtocol {
    func changeTheme(theme: String)
    func makeCurrentIndex()
}
private protocol ServerProtocol {
    func updateUserThemeOnServer(theme: String)
}
//MARK: ThemePresenter - Presenter
class ThemePresenter: ObservableObject {
    
    @Published var currentIndex: Int
    let aiachyState: AiachyState
    let router: ProfileRouterPresenter
    let interactor: ThemeInteractor
    
    init(currentIndex: Int = 0,
         aiachy aiachyState: AiachyState,
         router: ProfileRouterPresenter) {
        self.interactor = ThemeInteractor(aiachy: aiachyState)
        self.currentIndex = currentIndex
        self.aiachyState = aiachyState
        self.router = router
        makeCurrentIndex()
    }
    
}
//MARK: ThemePresenter - extension - HandlerProtocol
extension ThemePresenter: HandlerProtocol {
    
    func changeTheme(theme: String) {
        aiachyState.user.aiachyInfo.theme = theme
        updateUserThemeOnServer(theme: theme)
    }
    
    fileprivate func makeCurrentIndex() {
        let theme = aiachyState.user.aiachyInfo.theme
        
        switch theme {
        case "Light":
            currentIndex = 0
        case "Dark":
            currentIndex = 1
        default:
            currentIndex = 0
        }
    }
        
}

extension ThemePresenter: ServerProtocol {
    fileprivate func updateUserThemeOnServer(theme: String) {
        interactor.updateUserTheme(updateTheme: theme)
    }
}
