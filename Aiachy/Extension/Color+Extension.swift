//
//  Color+Extension.swift
//  Aiachy
//
//  Created by Mert Türedü on 14.05.2023.
//

import SwiftUI

extension Color {
    static func makeAiachyColor(_ aiachyState: AiachyState, aiachyColor: ColorHelper.ACYColors) -> Color {
        if aiachyState.user.aiachyInfo.theme == "Dark" {
            return Color(ColorHandler.makeAiachyColors(aiachyTheme: .AiachyDark, AiachyColor: aiachyColor))
        } else if  aiachyState.user.aiachyInfo.theme == "Light"{
            return Color(ColorHandler.makeAiachyColors(aiachyTheme: .AiachyLight, AiachyColor: aiachyColor))
        } else {
            return Color(aiachyColor.rawValue)
        }
    }
}
