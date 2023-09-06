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
    func makeImageWithZodiacInt(aiachy aiachyState: AiachyState, zodiac: Int, isAlternative: Bool = true) -> Image {
        
        if isAlternative {
            switch zodiac {
            case 0:
                return Image(ImageHandler.makeZodiacString(aiachyState,zodiac: .altAries))
            case 1:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .altTaurus))
            case 2:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .altGemini))
            case 3:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .altCancer))
            case 4:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .altLeo))
            case 5:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .altVirgo))
            case 6:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .altLibra))
            case 7:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .altScorpion))
            case 8:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .altSagittarius))
            case 9:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .altCapricorn))
            case 10:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .altAquarius))
            case 11:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .altPisces))
            default:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .altLeo))
            }
        } else {
            switch zodiac {
            case 0:
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .aries))
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
                return Image(ImageHandler.makeZodiacString(aiachyState, zodiac: .scorpion))
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
