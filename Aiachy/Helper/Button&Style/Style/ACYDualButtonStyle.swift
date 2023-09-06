//
//  ACYDualButtonStyle.swift
//  Aiachy
//
//  Created by Mert Türedü on 22.08.2023.
//

import SwiftUI

struct ACYDualButtonStyle: ButtonStyle {
    
    @EnvironmentObject var aiachyState: AiachyState
    let isItFirstButton: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.makeAiachyColor(aiachyState, aiachyColor: .firstColor), lineWidth: 1)
                .background(Color.makeAiachyColor(aiachyState, aiachyColor: .backgroundAlternativeColor).cornerRadius(20))
            HStack {
                configuration.label
                    .font(.aiachyFont(.roundedBold16))
                    .foregroundColor(.makeAiachyColor(aiachyState, aiachyColor: .thirdColor))
                if isItFirstButton {
                    Spacer()
                }
            }
            .padding(.horizontal)
        }
    }
}
