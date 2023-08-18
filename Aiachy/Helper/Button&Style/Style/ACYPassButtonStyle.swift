//
//  ACYPassButtonStyle.swift
//  Aiachy
//
//  Created by Mert Türedü on 16.07.2023.
//

import SwiftUI

//NeedRefator:
struct ACYPassButtonStyle: ButtonStyle {
    
    @EnvironmentObject var aiachyState: AiachyState
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.makeAiachyColor(aiachyState,
                                          aiachyColor: .secondColor))
                .background(Color.makeAiachyColor(aiachyState,
                                                  aiachyColor: .backgroundColor)
                    .clipShape(RoundedRectangle(cornerRadius: 20)))
                .shadow(color: Color.makeAiachyColor(aiachyState, aiachyColor: .firstColor)
                    .opacity(0.2), radius: 15, x: 0, y: 10)
            configuration.label
                .foregroundColor(Color.makeAiachyColor(aiachyState,
                                                   aiachyColor: .thirdColor))
                .font(.aiachyFont(.roundedBold14))
        }
    }
}
