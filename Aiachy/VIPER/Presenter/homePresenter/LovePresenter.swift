//
//  LovePresenter.swift
//  Aiachy
//
//  Created by Mert Türedü on 31.07.2023.
//

import Foundation
import Combine

private protocol LovePresenterAlertProtocol {
    
}

class LovePresenter: ObservableObject {
    
    let router: HomeRouterPresenter

    init(router: HomeRouterPresenter) {
        self.router = router
    }
    
}

extension LovePresenter: LovePresenterAlertProtocol {
    func makeAlert() {
        router.acyAlertEntity.title = .areYouSure
        router.acyAlertEntity.firstButtonText = .yesButton
        router.acyAlertEntity.secondButtonText = .noButton
        router.acyAlertEntity.typeError = 1
        router.acyAlertEntity.isNeedSecondButton = true
        router.acyAlertEntity.isShowingAlert = true
        router.acyAlertEntity.firstAction = {
            self.randomFunc()
            self.router.acyAlertEntity.isShowingAlert = false
        }
        router.acyAlertEntity.secondAction = {
            
        }
    }
    
    func randomFunc() {
            print("Rastgele fonksiyon çalıştırıldı!")
    }
}
