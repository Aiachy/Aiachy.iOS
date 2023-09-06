//
//  ZodiacSelectionPresenter.swift
//  Aiachy
//
//  Created by Mert Türedü on 19.07.2023.
//

import SwiftUI

private protocol HandlerProtocol {
    func makeZodiacString(_ zodiac: TextHelper.ZodiacCompletion.zodiac ) -> String
}
// ZodiacSelectionPresenter - Presenter
class ZodiacSelectionPresenter: ObservableObject {
    
    @Published var isUserSelectedZodiac: Bool
    @Published var selectedZodiac: TextHelper.ZodiacCompletion.zodiac?
    let aiachyState: AiachyState
    let router: AuthRouterPresenter
    let columns: [GridItem]
    
    init(isUserSelectedZodiac: Bool = false,
         aiachy aiachyState: AiachyState,
         router: AuthRouterPresenter,
         columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)) {
        self.isUserSelectedZodiac = isUserSelectedZodiac
        self.aiachyState = aiachyState
        self.router = router
        self.columns = columns
    }
    
    let zodiacSelectEntity : [ZodiacSelect] = [
       ZodiacSelect(id: 0,
                    zodiacImage: .altAries,
                    selectedZodiacImage: .aries,
                    zodiacName: .ariesZodiacName,
                    zodiacShortedDate: .ariesZodiacDate),
       ZodiacSelect(id: 1,
                    zodiacImage: .altTaurus,
                    selectedZodiacImage: .taurus,
                    zodiacName: .taurusZodiacName,
                    zodiacShortedDate: .taurusZodiacDate),
       ZodiacSelect(id: 2,
                    zodiacImage: .altGemini,
                    selectedZodiacImage: .gemini,
                    zodiacName: .geminiZodiacName,
                    zodiacShortedDate: .geminiZodiacDate),
       ZodiacSelect(id: 3,
                    zodiacImage: .altCancer,
                    selectedZodiacImage: .cancer,
                    zodiacName: .cancerZodiacName,
                    zodiacShortedDate: .cancerZodiacDate),
       ZodiacSelect(id: 4,
                    zodiacImage: .altLeo,
                    selectedZodiacImage: .leo,
                    zodiacName: .leoZodiacName,
                    zodiacShortedDate: .leoZodiacDate),
       ZodiacSelect(id: 5,
                    zodiacImage: .altVirgo,
                    selectedZodiacImage: .virgo,
                    zodiacName: .virgoZodiacName,
                    zodiacShortedDate: .virgoZodiacDate),
       ZodiacSelect(id: 6,
                    zodiacImage: .altLibra,
                    selectedZodiacImage: .libra,
                    zodiacName: .libraZodiacDate,
                    zodiacShortedDate: .libraZodiacDate),
       ZodiacSelect(id: 7,
                    zodiacImage: .altScorpion,
                    selectedZodiacImage: .scorpion,
                    zodiacName: .scorpioZodiacName,
                    zodiacShortedDate: .scorpioZodiacDate),
       ZodiacSelect(id: 8,
                    zodiacImage: .altSagittarius,
                    selectedZodiacImage: .sagittarius,
                    zodiacName: .sagittariusZodiacDate,
                    zodiacShortedDate: .sagittariusZodiacDate),
       ZodiacSelect(id: 9,
                    zodiacImage: .altCapricorn,
                    selectedZodiacImage: .capricorn,
                    zodiacName: .capricornZodiacName,
                    zodiacShortedDate: .capricornZodiacDate),
       ZodiacSelect(id: 10,
                    zodiacImage: .altAquarius,
                    selectedZodiacImage: .aquarius,
                    zodiacName: .aquariusZodiacName,
                    zodiacShortedDate: .aquariusZodiacDate),
       ZodiacSelect(id: 11,
                    zodiacImage: .altPisces,
                    selectedZodiacImage: .pisces,
                    zodiacName: .piscesZodiacName,
                    zodiacShortedDate: .piscesZodiacDate)
       
    ]
    
}

extension ZodiacSelectionPresenter {
    
    func selectedZodiacToInt(selectedZodiac: TextHelper.ZodiacCompletion.zodiac) -> Int {
        switch selectedZodiac {
        case .ariesZodiacName:
            return 0
        case .taurusZodiacName:
            return 1
        case .geminiZodiacName:
            return 2
        case .cancerZodiacName:
            return 3
        case .leoZodiacName:
            return 4
        case .virgoZodiacName:
            return 5
        case .libraZodiacName:
            return 6
        case .scorpioZodiacName:
            return 7
        case .sagittariusZodiacName:
            return 8
        case .capricornZodiacName:
            return 9
        case .aquariusZodiacName:
            return 10
        case .piscesZodiacName:
            return 11
        default:
            return .zero
        }
    }
}
