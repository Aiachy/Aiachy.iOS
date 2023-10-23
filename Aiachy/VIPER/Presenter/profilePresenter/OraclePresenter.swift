//
//  OraclePresenter.swift
//  Aiachy
//
//  Created by Mert Türedü on 22.08.2023.
//

import Foundation

private protocol HandlerProtocol {
    
}
private protocol StoreProtocol {
    func purchase()
}

private protocol AlertProtocol {
    
}
//MARK: OraclePresenter - Presenter
class OraclePresenter: ObservableObject {
    
    @Published var acyAlertEntity: ACYAlertEntity
    @Published var buttonText: TextHelper.GeneralCompletion.contentButton = .subscribeOracle
    @Published var currentIndex: Int
    let aiachyState: AiachyState
    let router: ProfileRouterPresenter
    let interactor: OracleInteractor
    
    
    init(acyAlertEntity: ACYAlertEntity = ACYAlertEntity(),
         currentIndex: Int = 0,
         aiachy aiachyState: AiachyState,
         router: ProfileRouterPresenter) {
        self.interactor = OracleInteractor(aiachy: aiachyState, storeKitManager: StoreKitManager(aiachy: aiachyState))
        self.acyAlertEntity = acyAlertEntity
        self.currentIndex = currentIndex
        self.aiachyState = aiachyState
        self.router = router
    
    }
    
    func checkOracle() -> Bool {
        aiachyState.user.userOracle.wrappedIsOracled
    }
    
    func makeButtonText(currentIndex: Int = 0) -> TextHelper.GeneralCompletion.contentButton?  {
        if currentIndex == 0 {
            return checkOracle() ? .subscribed : .subscribeOccult
        } else if currentIndex == 1 {
            return checkOracle() ? .subscribed : .subscribeOracle
        } else {
            return .none
        }
    }
    
    let oracleOccultData: [ACYOracleColumnsEntity] = [
        ACYOracleColumnsEntity(id: 0,
                               topImage: .universalWisdom,
                               topText: .universalWisdomTitle,
                               backgroundImage: .oracleOccult,
                               elements: [ACYOracleColumnsEntityElement(id: 0,
                                                                        topImage: .oracleltem,
                                                                        text: .universalWisdomOccult1),
                                          ACYOracleColumnsEntityElement(id: 1,
                                                                        topImage: .oracleltem,
                                                                        text: .universalWisdomOccult2),
                                          ACYOracleColumnsEntityElement(id: 2,
                                                                        topImage: .oracleltem,
                                                                        text: .universalWisdomOccult3),
                                          ACYOracleColumnsEntityElement(id: 3,
                                                                        topImage: .oracleltem,
                                                                        text: .universalWisdomOccult4)]),
        ACYOracleColumnsEntity(id: 1,
                               topImage: .thresholdOfTheSoul,
                               topText: .thresholdOfTheSoulTitle,
                               backgroundImage: .oracleOccult,
                               elements: [ACYOracleColumnsEntityElement(id: 0,
                                                                        topImage: .oracleltemSpecial,
                                                                        text: .thresholdOfTheSoulOccult1),
                                          ACYOracleColumnsEntityElement(id: 1,
                                                                        topImage: .oracleltemPlatinum,
                                                                        text: .thresholdOfTheSoulOccult2),
                                          ACYOracleColumnsEntityElement(id: 2,
                                                                        topImage: .oracleltemPlatinum,
                                                                        text: .thresholdOfTheSoulOccult3),
                                          ACYOracleColumnsEntityElement(id: 3,
                                                                        topImage: .oracleltemPlatinum,
                                                                        text: .thresholdOfTheSoulOccult4)])
    ]
    
    let oracleOracleData: [ACYOracleColumnsEntity] = [
        ACYOracleColumnsEntity(id: 0,
                               topImage: .universalWisdom,
                               topText: .universalWisdomTitle,
                               backgroundImage: .oracleOccult,
                               elements: [ACYOracleColumnsEntityElement(id: 0,
                                                                        topImage: .oracleltemSpecial,
                                                                        text: .universalWisdomOracle1),
                                          ACYOracleColumnsEntityElement(id: 1,
                                                                        topImage: .oracleltemPlatinum,
                                                                        text: .universalWisdomOracle2),
                                          ACYOracleColumnsEntityElement(id: 2,
                                                                        topImage: .oracleltemPlatinum,
                                                                        text: .universalWisdomOracle3),
                                          ACYOracleColumnsEntityElement(id: 3,
                                                                        topImage: .oracleltemPlatinum,
                                                                        text: .universalWisdomOracle4)]),
        ACYOracleColumnsEntity(id: 1,
                               topImage: .thresholdOfTheSoul,
                               topText: .thresholdOfTheSoulTitle,
                               backgroundImage: .oracleOccult,
                               elements: [ACYOracleColumnsEntityElement(id: 0,
                                                                        topImage: .oracleltemSpecial,
                                                                        text: .thresholdOfTheSoulOracle1),
                                          ACYOracleColumnsEntityElement(id: 1,
                                                                        topImage: .oracleltemPlatinum,
                                                                        text: .thresholdOfTheSoulOracle2),
                                          ACYOracleColumnsEntityElement(id: 2,
                                                                        topImage: .oracleltemPlatinum,
                                                                        text: .thresholdOfTheSoulOracle3),
                                          ACYOracleColumnsEntityElement(id: 3,
                                                                        topImage: .oracleltemPlatinum,
                                                                        text: .thresholdOfTheSoulOracle4)])
    ]
}

extension OraclePresenter: HandlerProtocol {
    

}

extension OraclePresenter: StoreProtocol{

    func purchase() {
        
        guard let oracle = aiachyState.acyAiachyRepo.acyStoreEntity?.filter({ $0.productID == "Oracle.Oracle" }).first else { return }
        guard let occult = aiachyState.acyAiachyRepo.acyStoreEntity?.filter({ $0.productID == "Oracle.Occult" }).first else { return }
        
        if currentIndex == 0 {
            interactor.makePurchase(entity: occult)
        } else if currentIndex == 1 {
            interactor.makePurchase(entity: oracle)
        }
    }
    
}

extension OraclePresenter: AlertProtocol {
    
}
