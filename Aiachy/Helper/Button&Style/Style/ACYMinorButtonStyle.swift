//
//  ACYMinorButtonStyle.swift
//  Aiachy
//
//  Created by Mert Türedü on 16.07.2023.
//

import SwiftUI

struct ACYMinorButtonStyle: ButtonStyle {
    
    @EnvironmentObject var aiachyState: AiachyState
    var isBlack: Bool?
    var wrappedIsBlack: Bool {
        isBlack ?? false
    }
    
    func makeBody(configuration: Configuration) -> some View {
        let pressed = configuration.isPressed
        ZStack {
            makeRectangle(with: configuration)
            makeLabel(with: configuration)
        }
        .scaleEffect(pressed ? 0.99 : 1.0)
    }
}

extension ACYMinorButtonStyle {
    private func makeRectangle(with configuration: Configuration) -> some View {
        let isPressed = configuration.isPressed
        let strokeWhiteColor = Color(ColorHandler.makeAiachyColor(aiachyState, aiachyColor: isPressed ? .backgroundColor : .thirdColor))
        let strokeBlackColor = Color(ColorHandler.makeAiachyColor(aiachyState, aiachyColor: isPressed ? .fourthColor : .secondColor))
        let whiteColor = Color(ColorHandler.makeAiachyColor(aiachyState, aiachyColor: isPressed ? .thirdColor : .backgroundColor ))
        let blackColor = Color(ColorHandler.makeAiachyColor(aiachyState, aiachyColor: isPressed ? .secondColor : .fourthColor))
        
        return RoundedRectangle(cornerRadius: 20)
            .stroke(wrappedIsBlack ? strokeBlackColor : strokeWhiteColor, lineWidth: 1)
            .background((wrappedIsBlack ? blackColor : whiteColor).cornerRadius(20))
            .shadow(color: Color(ColorHandler.makeAiachyColor(aiachyState, aiachyColor: .firstColor)).opacity(0.4), radius: 4, x: 0, y: 3)
    }
    
    private func makeLabel(with configuration: Configuration) -> some View {
        let isPressed = configuration.isPressed
        let blackColor = Color(ColorHandler.makeAiachyColor(aiachyState, aiachyColor: isPressed ? .fourthColor : .secondColor))
        let whiteColor = Color(ColorHandler.makeAiachyColor(aiachyState, aiachyColor: isPressed ? .backgroundColor : .thirdColor ))

        return configuration.label
            .foregroundStyle( wrappedIsBlack ? blackColor : whiteColor )
            .font(FontHandler.aiachyFont( .roundedBold16))
    }
}
