//
//  ACYAlternativeButtonStyle.swift
//  Aiachy
//
//  Created by Mert Türedü on 16.07.2023.
//

import SwiftUI

struct ACYAlternativeButtonStyle : ButtonStyle {
    
    @EnvironmentObject var aiachyState: AiachyState
    
    func makeBody(configuration: Configuration) -> some View {
        let pressed = configuration.isPressed
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.makeAiachyColor(aiachyState,
                                          aiachyColor: .secondColor),lineWidth: 1)
            configuration.label
                .foregroundColor(.makeAiachyColor(aiachyState,
                                              aiachyColor: .firstColor))
                .font(.aiachyFont(.roundedBold14))
        }
        .background(Color.makeAiachyColor(aiachyState,
                                      aiachyColor: .backgroundColor).cornerRadius(10))
        .offset(x: 0,
                y: pressed ? 2 : 0)
    }
}
