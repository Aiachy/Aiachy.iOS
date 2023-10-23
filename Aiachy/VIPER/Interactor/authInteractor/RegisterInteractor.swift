//
//  RegisterInteractor.swift
//  Aiachy
//
//  Created by Mert Türedü on 19.07.2023.
//

import Foundation
//MARK: RegisterInteractor - protocol - HandlerProtocol
private protocol HandlerProtocol {
    func checkMail(_ userEmail: String, completion: @escaping (Bool) -> ())
}
//MARK: RegisterInteractor - Interactor
class RegisterInteractor: ObservableObject {
    
    var aiachyState: AiachyState
    private let userServerManager: UserServerManager
    
    init(aiachy aiachyState: AiachyState) {
        self.aiachyState = aiachyState
        self.userServerManager = UserServerManager(aiachy: aiachyState)
    }
    //NextPatchTODO: 1312"
    /// <#Description#>
    /// - Parameters:
    ///   - aiachyState: <#aiachyState description#>
    ///   - completion: <#completion description#>
    func checkUserInformation(userEmail: String, completion: @escaping (Bool) -> ()) {
        userServerManager.controlUserInformationOnServer(dataField: "userLoginInfo", whereField: "email", userInformation: userEmail) { checkedMail in
            if checkedMail {
                completion(true)
            } else {
                completion(false)
            }
        }
    }
}


