//
//  ACYNextButtonStyle.swift
//  Aiachy
//
//  Created by Mert Türedü on 1.10.2023.
//

import SwiftUI

struct ACYNextButtonStyle: ButtonStyle {
    
    @EnvironmentObject var aiachyState: AiachyState
   
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            makeCircle
            configuration.label
        }
    }
    
}

extension ACYNextButtonStyle {
    
    private var makeCircle: some View {
        Circle()
            .stroke(Color(ColorHandler.makeAiachyColor(aiachyState, aiachyColor: .thirdColor)))
            .background(Color(ColorHandler.makeAiachyColor(aiachyState, aiachyColor: .backgroundColor)).clipShape(Circle()))
    }
}
