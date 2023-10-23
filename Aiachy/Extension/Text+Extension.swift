//
//  Text+Extension.swift
//  Aiachy
//
//  Created by Mert Türedü on 2.10.2023.
//

import SwiftUI

extension Text {
    
    static func makeZodiacTextWithZodiacInt(aiachy aiachyState: AiachyState, zodiac: Int) -> some View {
        switch zodiac {
        case 0:
            return Text(TextHandler.makeZodiacString(aiachy: aiachyState, zodiac: .aquarius))
        case 1:
            return Text(TextHandler.makeZodiacString(aiachy: aiachyState, zodiac: .taurus))
        case 2:
            return Text(TextHandler.makeZodiacString(aiachy: aiachyState, zodiac: .gemini))
        case 3:
            return Text(TextHandler.makeZodiacString(aiachy: aiachyState, zodiac: .cancer))
        case 4:
            return Text(TextHandler.makeZodiacString(aiachy: aiachyState, zodiac: .leo))
        case 5:
            return Text(TextHandler.makeZodiacString(aiachy: aiachyState, zodiac: .virgo))
        case 6:
            return Text(TextHandler.makeZodiacString(aiachy: aiachyState, zodiac: .libra))
        case 7:
            return Text(TextHandler.makeZodiacString(aiachy: aiachyState, zodiac: .scorpio))
        case 8:
            return Text(TextHandler.makeZodiacString(aiachy: aiachyState, zodiac: .sagittarius))
        case 9:
            return Text(TextHandler.makeZodiacString(aiachy: aiachyState, zodiac: .capricorn))
        case 10:
            return Text(TextHandler.makeZodiacString(aiachy: aiachyState, zodiac: .aquarius))
        case 11:
            return Text(TextHandler.makeZodiacString(aiachy: aiachyState, zodiac: .pisces))
        default:
            return Text(TextHandler.makeZodiacString(aiachy: aiachyState, zodiac: .leo))
        }
    }
    
}
