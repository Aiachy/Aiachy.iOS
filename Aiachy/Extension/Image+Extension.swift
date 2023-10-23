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
    func makeCrystalImageWithZodiacInt(aiachy aiachyState: AiachyState, crystal: Int) -> Image {
        switch crystal {
        case 0:
            return Image(ImageHandler.makeCrystalZodiacString(aiachyState,crystal: .aquariusCrystal))
        case 1:
            return Image(ImageHandler.makeCrystalZodiacString(aiachyState, crystal: .taurusCrystal))
        case 2:
            return Image(ImageHandler.makeCrystalZodiacString(aiachyState, crystal: .geminiCrystal))
        case 3:
            return Image(ImageHandler.makeCrystalZodiacString(aiachyState, crystal: .cancerCrystal))
        case 4:
            return Image(ImageHandler.makeCrystalZodiacString(aiachyState, crystal: .leoCrystal))
        case 5:
            return Image(ImageHandler.makeCrystalZodiacString(aiachyState, crystal: .virgoCrystal))
        case 6:
            return Image(ImageHandler.makeCrystalZodiacString(aiachyState, crystal: .libraCrystal))
        case 7:
            return Image(ImageHandler.makeCrystalZodiacString(aiachyState, crystal: .scorpioCrystal))
        case 8:
            return Image(ImageHandler.makeCrystalZodiacString(aiachyState, crystal: .sagittariusCrystal))
        case 9:
            return Image(ImageHandler.makeCrystalZodiacString(aiachyState, crystal: .capricornCrystal))
        case 10:
            return Image(ImageHandler.makeCrystalZodiacString(aiachyState, crystal: .aquariusCrystal))
        case 11:
            return Image(ImageHandler.makeCrystalZodiacString(aiachyState, crystal: .piscesCrystal))
        default:
            return Image(ImageHandler.makeCrystalZodiacString(aiachyState, crystal: .leoCrystal))
        }
    }
    
    func makeZodiacImageWithZodiacInt(aiachy aiachyState: AiachyState, zodiac: Int, isAlternative: Bool = true) -> Image {
        
        if isAlternative {
            switch zodiac {
            case 0:
                return Image(ImageHandler.makeAlternativeZodiacString(aiachyState, alternative: .aquariusAlternative))
            case 1:
                return Image(ImageHandler.makeAlternativeZodiacString(aiachyState, alternative: .taurusAlternative))
            case 2:
                return Image(ImageHandler.makeAlternativeZodiacString(aiachyState, alternative: .geminiAlternative))
            case 3:
                return Image(ImageHandler.makeAlternativeZodiacString(aiachyState, alternative: .cancerAlternative))
            case 4:
                return Image(ImageHandler.makeAlternativeZodiacString(aiachyState, alternative: .leoAlternative))
            case 5:
                return Image(ImageHandler.makeAlternativeZodiacString(aiachyState, alternative: .virgoAlternative))
            case 6:
                return Image(ImageHandler.makeAlternativeZodiacString(aiachyState, alternative: .libraAlternative))
            case 7:
                return Image(ImageHandler.makeAlternativeZodiacString(aiachyState, alternative: .scorpioAlternative))
            case 8:
                return Image(ImageHandler.makeAlternativeZodiacString(aiachyState, alternative: .sagittariusAlternative))
            case 9:
                return Image(ImageHandler.makeAlternativeZodiacString(aiachyState, alternative: .capricornAlternative))
            case 10:
                return Image(ImageHandler.makeAlternativeZodiacString(aiachyState, alternative: .aquariusAlternative))
            case 11:
                return Image(ImageHandler.makeAlternativeZodiacString(aiachyState, alternative: .piscesAlternative))
            default:
                return Image(ImageHandler.makeAlternativeZodiacString(aiachyState, alternative: .leoAlternative))
            }
        } else {
            switch zodiac {
            case 0:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .aquarius))
            case 1:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .taurus))
            case 2:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .gemini))
            case 3:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .cancer))
            case 4:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .leo))
            case 5:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .virgo))
            case 6:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .libra))
            case 7:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .scorpio))
            case 8:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .sagittarius))
            case 9:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .capricorn))
            case 10:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .aquarius))
            case 11:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .pisces))
            default:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .leo))
            }
        }
    }
    
    
}
