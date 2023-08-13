//
//  Image+Extension.swift
//  Aiachy
//
//  Created by Mert Türedü on 14.05.2023.
//

import SwiftUI

extension View {
    /// Taking zodiac number value and converting it to picture in anarchy state.
    /// - Parameter zodiac: To specify a picture by theme.
    /// - Returns: Picture rotates.
    func makeImageWithZodiacInt(aiachy aiachyState: AiachyState) -> Image {
        
        let zodiac = aiachyState.user.userZodiac.wrappedZodiac
        
        switch zodiac {
        case 0:
            return Image.setACYZodiacAltImage(aiachyState, zodiacAlt: .altAries)
        case 1:
            return Image.setACYZodiacAltImage(aiachyState, zodiacAlt: .altTaurus)
        case 2:
            return Image.setACYZodiacAltImage(aiachyState, zodiacAlt: .altGemini)
        case 3:
            return Image.setACYZodiacAltImage(aiachyState, zodiacAlt: .altCancer)
        case 4:
            return Image.setACYZodiacAltImage(aiachyState, zodiacAlt: .altLeo)
        case 5:
            return Image.setACYZodiacAltImage(aiachyState, zodiacAlt: .altVirgo)
        case 6:
            return Image.setACYZodiacAltImage(aiachyState, zodiacAlt: .altLibra)
        case 7:
            return Image.setACYZodiacAltImage(aiachyState, zodiacAlt: .altScorpion)
        case 8:
            return Image.setACYZodiacAltImage(aiachyState, zodiacAlt: .altSagittarius)
        case 9:
            return Image.setACYZodiacAltImage(aiachyState, zodiacAlt: .altCapricorn)
        case 10:
            return Image.setACYZodiacAltImage(aiachyState, zodiacAlt: .altAquarius)
        case 11:
            return Image.setACYZodiacAltImage(aiachyState, zodiacAlt: .altPisces)
        default:
            return Image.setACYZodiacAltImage(aiachyState, zodiacAlt: .altLeo)
        }
    }
}

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

