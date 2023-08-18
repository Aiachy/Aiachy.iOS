//
//  OnboardingPresenter.swift
//  Aiachy
//
//  Created by Mert Türedü on 15.05.2023.
//

import Foundation

class OnboardingPresenter: ObservableObject {
    
    @Published var currentIndex: Int
    let aiachyState = AiachyState()
    
    init(currentIndex: Int = 0) {
        self.currentIndex = currentIndex
    }
    
    let acyOnboardingEntityData: [ACYOnboardingEntity] = [
        ACYOnboardingEntity(id: 0,
                            onboardingImage: .authHeart,
                            onboardingTitle: ACYTextHelper.ACYAuthText.ACYonboardingTitleText.HeartofAstrologyViewTitle.rawValue,
                            onboardingDescription: ACYTextHelper.ACYAuthText.ACYonboardingDescriptionText.HeartofAstrologyViewDescription.rawValue),
        ACYOnboardingEntity(id: 1,
                            onboardingImage: .secretStar,
                            onboardingTitle: ACYTextHelper.ACYAuthText.ACYonboardingTitleText.SecretOfTheStarsViewTitle.rawValue,
                            onboardingDescription: ACYTextHelper.ACYAuthText.ACYonboardingDescriptionText.SecretOfTheStarsViewDescription.rawValue),
        ACYOnboardingEntity(id: 2,
                            onboardingImage: .yourFuture,
                            onboardingTitle: ACYTextHelper.ACYAuthText.ACYonboardingTitleText.YourFutureViewTitle.rawValue,
                            onboardingDescription: ACYTextHelper.ACYAuthText.ACYonboardingDescriptionText.YourFutureViewDescription.rawValue),
    ]
}
