//
//  OracleInteractor.swift
//  Aiachy
//
//  Created by Mert Türedü on 22.08.2023.
//

import Foundation
//MARK: - OracleInteractor - protocol - HandlerProtocol -
private protocol HandlerProtocol {
    
}
//MARK: - OracleInteractor - protocol - ServerProtocol -
private protocol ServerProtocol {
    func makeNewUserOracle(entity acyStoreEntity: ACYStoreEntity) -> UserOracle
}
//MARK: - OracleInteractor - protocol - StoreProtocol -
private protocol StoreProtocol {
    func makePurchase(entity acyStoreEntity: ACYStoreEntity)
}
//MARK: - OracleInteractor - Interactor -
class OracleInteractor: ObservableObject {
    
    let aiachyState: AiachyState
    private let userServerManager: UserServerManager
    private let storeKitManager: StoreKitManager
    
    init(aiachy aiachyState: AiachyState,
         storeKitManager: StoreKitManager) {
        self.aiachyState = aiachyState
        self.userServerManager = UserServerManager(aiachy: aiachyState)
        self.storeKitManager = storeKitManager
    }
    
}
//MARK: - OracleInteractor -  extension  - HandlerProtocol -
extension OracleInteractor: HandlerProtocol {
    
}
extension OracleInteractor: ServerProtocol {
    
    func makeNewUserOracle(entity acyStoreEntity: ACYStoreEntity) -> UserOracle {
        
        let currentDate = Date()
        
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day], from: currentDate)
        
        guard let year = components.year, let month = components.month, let day = components.day else {
            print("Tarih bileşenleri alınamıyor.")
            return UserOracle()
        }
        
        let formattedDate = "\(year).\(month).\(day)"
        
        return UserOracle(isOracled: true,
                          oracledDate: formattedDate,
                          oracleMethod: acyStoreEntity.makeSubscriptionMethod(),
                          oraclePackage: acyStoreEntity.productID)
    }
}
//MARK: - OracleInteractor -  extension  - StoreProtocol -
extension OracleInteractor: StoreProtocol {
    
    /// <#Description#>
    /// - Parameter entity: <#entity description#>
    func makePurchase(entity acyStoreEntity: ACYStoreEntity) {
        guard let product = acyStoreEntity.product else { return }
        DispatchQueue.main.async { [self] in
            Task {
                if try await storeKitManager.purchase(product) != nil { 
                    aiachyState.user.userOracle = makeNewUserOracle(entity: acyStoreEntity)
                    userServerManager.updateUserInformationOnServer()
                }
            }
        }
    }
    
}
