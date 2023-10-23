//
//  LanguageInteractor.swift
//  Aiachy
//
//  Created by Mert Türedü on 22.08.2023.
//

import Foundation
private protocol ServerProtocol {
    func updateUserLanguage(entity acyLanguageEntity: ACYLanguageEntity)
}

class LanguageInteractor: ObservableObject {
    
    let aiachyState: AiachyState
    private let userServerManager: UserServerManager
    
    init(aiachy aiachyState: AiachyState) {
        self.aiachyState = aiachyState
        self.userServerManager = UserServerManager(aiachy: aiachyState)
        
    }
    
}
extension LanguageInteractor: ServerProtocol {
    
    /// <#Description#>
    /// - Parameters:
    ///   - aiachyState: <#aiachyState description#>
    ///   - acyLanguageEntity: <#acyLanguageEntity description#>
    func updateUserLanguage(entity acyLanguageEntity: ACYLanguageEntity) {
        /// value
        var info = aiachyState.user.aiachyInfo
        let newLanguageInfo = AiachyLanguageInfo(language: acyLanguageEntity.countryCode, languageIdentifier: acyLanguageEntity.localeIdentifier)
        info.aiachyLanguageInfo = newLanguageInfo
        
        userServerManager.updateUserInformationOnServer()
    }
}
