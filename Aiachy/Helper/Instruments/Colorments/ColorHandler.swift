//
//  ColorHandler.swift
//  Aiachy
//
//  Created by Mert Türedü on 15.05.2023.
//

import SwiftUI

struct ColorHandler {
    
    /// I'm matching the colors with the existing theme. As a result, it takes compatible values in assets.
    /// - Parameters:
    ///   - appTheme: We indicate the current theme.
    ///   - ColorString: We indicate what color it will come.
    /// - Returns: We change the values in assets according to the theme.
    static func makeAiachyColors(aiachyTheme: ColorHelper.aiachyThemeColor, AiachyColor: ColorHelper.ACYColors) -> String {
        switch aiachyTheme {
        case .AiachyLight:
            return "\(AiachyColor.rawValue)"
        case .AiachyDark:
            return "\(AiachyColor.rawValue)-Dark"
        }
    }
    
    static func makeAiachyColorsChacka(aiachy aiachyState: AiachyState, chackra: ColorHelper.Chackra) -> String {
        switchValueWithThemeToString(aiachy: aiachyState, with: chackra.rawValue)
    }
}

extension ColorHandler {
    static func switchValueWithThemeToString(aiachy aiachyState: AiachyState, with value: String) -> String  {
        let aiachyTheme = aiachyState.user.aiachyInfo.wrappedTheme
        switch aiachyTheme {
        case "Light":
            return value
        case "Dark":
            return value + "-Dark"
        default:
            return value
        }
    }
}
