//
//  ACYMysticTitleAndDescriptionText.swift
//  Aiachy
//
//  Created by Mert Türedü on 15.08.2023.
//

import SwiftUI

struct ACYMysticTitleAndDescriptionText: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    var fontType: FontHandler.aiachyFontType
    var title: ACYTextHelper.ACYMysticText.ACYmysticTitleText
    var description: ACYTextHelper.ACYMysticText.ACYmysticDescriptionText
    
    var body: some View {
        VStack {
            Text(title.rawValue.locale())
                .font(.aiachyFont(fontType))
                .foregroundStyle(Color.makeAiachyColor(aiachyState, aiachyColor: .secondColor))
            Text(description.rawValue.locale())
                .font(.aiachyFont(.oldBold14))
                .foregroundStyle(Color.makeAiachyColor(aiachyState, aiachyColor: .firstColor))
        }
    }
}

#Preview {
    ACYMysticTitleAndDescriptionText(fontType: .CinzelBlack50,
                                     title: .tarotStarterTitle,
                                     description: .tarotStarterDescription)
    .environmentObject(ACY_PREVIEWS_STATE)
}
