//
//  ACYOnboarding.swift
//  Aiachy
//
//  Created by Mert Türedü on 16.07.2023.
//

import SwiftUI

struct ACYOnboarding: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    @Binding var selection: Int
    let acyOnboardingEntityData: [ACYOnboardingEntity]
    
    var body: some View {
        TabView(selection: $selection, content: {
            ForEach(acyOnboardingEntityData, id: \.id) { onboarding in
                OnboardingTemplate(ACYOnboardingEntityData: onboarding)
            }
        })
        .tabViewStyle(.page(indexDisplayMode: .never))
        .environmentObject(aiachyState)
        .makeAccessibilitysForUITest(identifier: "ACYOnboardingID")
    }
}

struct ACYOnboarding_Previews: PreviewProvider {
    
    
    static let ACYOnboardingEntityData: [ACYOnboardingEntity] = [
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
                   onboardingTitle: ACYTextHelper.ACYAuthText.ACYonboardingTitleText.HeartofAstrologyViewTitle.rawValue,
                   onboardingDescription: ACYTextHelper.ACYAuthText.ACYonboardingDescriptionText.HeartofAstrologyViewDescription.rawValue),
    ]
    
    static var previews: some View {
        ACYOnboarding(selection: .constant(0), acyOnboardingEntityData: ACYOnboardingEntityData)
            .environmentObject(ACY_PREVIEWS_STATE)
    }
}

private struct OnboardingTemplate: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    let ACYOnboardingEntityData: ACYOnboardingEntity
    
    var body: some View {
        VStack(spacing: 0) {
            Image.setACYOnboardingImage(aiachyState, onboarding: ACYOnboardingEntityData.onboardingImage)
                .resizable()
                .scaledToFit()
                .frame(height: ACYdh(aiachyState, d: ACY_UPMED_SIZE))
            ACYTitleAndDescriptionText(title: ACYOnboardingEntityData.onboardingTitle,
                                       description: ACYOnboardingEntityData.onboardingDescription)
        }
        .environmentObject(aiachyState)
    }
}

