//
//  ThemeInteractor.swift
//  Aiachy
//
//  Created by Mert Türedü on 22.08.2023.
//

import Foundation

private protocol ServerProtocol {
    
}

class ThemeInteractor: ObservableObject {
    
    var aiachyState: AiachyState
    private let userServerManager: UserServerManager
    
    init(aiachy aiachyState: AiachyState) {
        self.aiachyState = aiachyState
        self.userServerManager = UserServerManager(aiachy: aiachyState)
    }
    
}

extension ThemeInteractor: ServerProtocol {
    /// <#Description#>
    /// - Parameter updateTheme: <#updateTheme description#>
    func updateUserTheme(updateTheme: String) {
        
        let info = aiachyState.user.aiachyInfo
        
        aiachyState.user.aiachyInfo = AiachyInfo(version: info.wrappedVersion,
                                    theme: updateTheme,
                                    aiachyLanguageInfo: info.aiachyLanguageInfo,
                                    aiachyDataInfo: info.aiachyDataInfo,
                                    aiachyRemoteInfo: info.aiachyRemoteInfo)
        userServerManager.updateUserInformationOnServer()
        
    }
}
