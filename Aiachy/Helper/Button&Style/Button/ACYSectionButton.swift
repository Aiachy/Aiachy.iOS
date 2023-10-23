//
//  ACYSectionButton.swift
//  Aiachy
//
//  Created by Mert Türedü on 30.09.2023.
//

import SwiftUI

struct ACYSectionButton: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    @Binding var isSelected: Bool
    var text : TextHelper.GeneralCompletion.sectionButton
    var action: () -> ()
    
    var body: some View {
            Button {
                withAnimation(.spring()) {
                    action()
                }
            } label: {
                Text(TextHandler.makeGeneralSectionButtonString(aiachy: aiachyState,
                                                                sectionButton: text))
            }
            .buttonStyle(ACYSectionButtonStyle(isSelected: isSelected))
            .frame(width: ACYdw(aiachyState, d: 0.27),
                   height: ACYdh(aiachyState, d: 0.051))
            .environmentObject(aiachyState)
    }
}

#Preview {
    ACYSectionButton(isSelected: .constant(false),
                     text: .occult) { }
        .environmentObject(ACY_PREVIEWS_STATE)
}
