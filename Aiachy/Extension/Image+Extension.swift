//
//  Image+Extension.swift
//  Aiachy
//
//  Created by Mert Türedü on 14.05.2023.
//

import SwiftUI

//NextPatchTODO: Less code More Active
extension Image {
    //MARK: - ImageExtension - AppCompletion
    typealias imageHelperApp = ImageHelper.ACYAppImage
    static func setACYAppImage(_ aiachyState: AiachyState, app: imageHelperApp.ACYappImage) -> Image {
        if aiachyState.user.aiachyInfo.theme == "Light" {
            return Image(ImageHandler.getACYAppStringApp(.AiachyLight, app: app))
        } else if  aiachyState.user.aiachyInfo.theme == "Dark"{
            return Image(ImageHandler.getACYAppStringApp(.AiachyDark, app: app))
        } else {
            return Image(app.rawValue)
        }
    }
    
    static func setACYAlertImage(_ aiachyState: AiachyState, alert: imageHelperApp.ACYalertImage) -> Image {
        if aiachyState.user.aiachyInfo.theme == "Light" {
            return Image(ImageHandler.getACYAppStringAlert(.AiachyLight, alert: alert))
        } else if  aiachyState.user.aiachyInfo.theme == "Dark"{
            return Image(ImageHandler.getACYAppStringAlert(.AiachyDark, alert: alert))
        } else {
            return Image(alert.rawValue)
        }
    }
    
    static func setACYOnboardingImage(_ aiachyState: AiachyState, onboarding: imageHelperApp.ACYonboardingImage) -> Image {
        if aiachyState.user.aiachyInfo.theme == "Light" {
            return Image(ImageHandler.getACYAppStringOnboarding(.AiachyLight, alert: onboarding))
        } else if  aiachyState.user.aiachyInfo.theme == "Dark"{
            return Image(ImageHandler.getACYAppStringOnboarding(.AiachyDark, alert: onboarding))
        } else {
            return Image(onboarding.rawValue)
        }
    }
    
    static func setACYButtonImage(_ aiachyState: AiachyState, button: imageHelperApp.button) -> Image {
        if aiachyState.user.aiachyInfo.theme == "Light" {
            return Image(ImageHandler.getACYAppStringButton(.AiachyLight, button: button))
        } else if  aiachyState.user.aiachyInfo.theme == "Dark"{
            return Image(ImageHandler.getACYAppStringButton(.AiachyDark, button: button))
        } else {
            return Image(button.rawValue)
        }
    }
    
    static func setACYBackgroundImage(_ aiachyState: AiachyState, background: imageHelperApp.background) -> Image {
        if aiachyState.user.aiachyInfo.theme == "Light" {
            return Image(ImageHandler.getACYAppStringBackground(.AiachyLight, background: background))
        } else if  aiachyState.user.aiachyInfo.theme == "Dark"{
            return Image(ImageHandler.getACYAppStringBackground(.AiachyDark, background: background))
        } else {
            return Image(background.rawValue)
        }
    }
    //MARK: - ImageExtension AiachyZodiac
    typealias imageHelperZodiac = ImageHelper.ZodiacCompletion
    
    static func setACYZodiacImage(_ aiachyState: AiachyState, zodiac: imageHelperZodiac.ACYzodiacImage) -> Image {
        if aiachyState.user.aiachyInfo.theme == "Light" {
            return Image(ImageHandler.getACYZodiacString(.AiachyLight, zodiac: zodiac ))
        } else if aiachyState.user.aiachyInfo.theme == "Dark" {
            return Image(ImageHandler.getACYZodiacString(.AiachyDark, zodiac: zodiac ))
        } else {
            return Image(zodiac.rawValue)
        }
    }
    
    static func setACYZodiacAltImage(_ aiachyState: AiachyState, zodiacAlt: imageHelperZodiac.zodiacAlt ) -> Image {
        if aiachyState.user.aiachyInfo.theme == "Light" {
            return Image(ImageHandler.getACYZodiacAltString(.AiachyLight, zodiacAlt: zodiacAlt ))
        } else if aiachyState.user.aiachyInfo.theme == "Dark" {
            return Image(ImageHandler.getACYZodiacAltString(.AiachyDark, zodiacAlt: zodiacAlt ))
        } else {
            return Image(zodiacAlt.rawValue)
        }
    }

    //MARK: - ImageExtension AuthCompletion
    typealias imageHelperAuth = ImageHelper.AuthCompletion
    static func setACYAuthCompletion(_ aiachyState: AiachyState, auth: ImageHelper.AuthCompletion.authCompletion) -> Image {
        if aiachyState.user.aiachyInfo.theme == "Light" {
            return Image(ImageHandler.getACYAuthString(.AiachyLight, auth: auth))
        } else if  aiachyState.user.aiachyInfo.theme == "Dark"{
            return Image(ImageHandler.getACYAuthString(.AiachyDark, auth: auth))
        } else {
            return Image(auth.rawValue)
        }
    }
}

