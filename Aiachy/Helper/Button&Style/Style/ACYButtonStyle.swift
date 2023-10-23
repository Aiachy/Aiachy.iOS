//
//  ACYButtonStyle.swift
//  Aiachy
//
//  Created by Mert Türedü on 18.05.2023.
//

import SwiftUI

struct ACYButtonStyle: ButtonStyle {
    
    @EnvironmentObject var aiachyState: AiachyState
    
    func makeBody(configuration: Configuration) -> some View {
            ZStack {
                makeRectangle(with: configuration)
                makeLabel(with: configuration)
            }
            .scaleEffect(configuration.isPressed ? 0.99 : 1.0) // Basıldığında küçülme efekti
        }
}

extension ACYButtonStyle {
    
    private func makeRectangle(with configuration: Configuration) -> some View {
        RoundedRectangle(cornerRadius: 20)
                .stroke(Color(ColorHandler.makeAiachyColor(aiachyState, aiachyColor: .secondColor)),
                        lineWidth: 1.5)
                .foregroundStyle(Color(ColorHandler.makeAiachyColor(aiachyState,
                                                                    aiachyColor: .fourthColor)))
                .background(Color(ColorHandler.makeAiachyColor(aiachyState,aiachyColor: .firstColor)).cornerRadius(20))
                .shadow(color: Color(ColorHandler.makeAiachyColor(aiachyState, aiachyColor: .firstColor)).opacity(0.4), radius: 4, x: 0, y: 3)
    }
    
    private func makeLabel(with configuration: Configuration) -> some View {
        
        let isPressed = configuration.isPressed
        
        return configuration.label
            .font(FontHandler.aiachyFont(.roundedBold17))
            .foregroundStyle(Color(ColorHandler.makeAiachyColor(aiachyState, aiachyColor: isPressed ? .secondColor : .backgroundColor )))
            .animation(.easeIn(duration: 5), value: isPressed)
    }
}
