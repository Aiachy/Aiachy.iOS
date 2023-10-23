//
//  AicyCashPresenter.swift
//  Aiachy
//
//  Created by Mert Türedü on 22.08.2023.
//

import Foundation

private protocol AlertProtocol {
    
    func makeAlert()
    
}

class AicyCashPresenter: ObservableObject {
    
    let aiachyState: AiachyState
    let router: ProfileRouterPresenter
    let interactor: AicyCashInteractor
    var acyAlertEntity: ACYAlertEntity
    
    init(aiachy aiachyState: AiachyState,
         router: ProfileRouterPresenter,
         acyAlertEntity: ACYAlertEntity = ACYAlertEntity()) {
        self.interactor = AicyCashInteractor(aiachy: aiachyState)
        
        self.router = router
        self.aiachyState = aiachyState
        self.acyAlertEntity = acyAlertEntity
        
        makeAlert()
    }
    
    
    
    
}


extension AicyCashPresenter: AlertProtocol {
    
    func makeAlert() {
        
        if !aiachyState.isAiachyReady {
            let acyAlert = ACYAlertEntity(title: .notReady, image: .notReady, firstButtonText: .okey, isShowingAlert: true, typeError: 2, firstAction:  {
                self.acyAlertEntity = ACYAlertEntity()
                
                self.router.navigate(to: .settings)
                
            })
            
            acyAlertEntity = acyAlert
        }
    }
}
