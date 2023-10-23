//
//  ACYNextButton.swift
//  Aiachy
//
//  Created by Mert Türedü on 1.10.2023.
//

import SwiftUI

struct ACYNextButton: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    var isLeft: Bool
    var action: () -> ()
    
    init(isLeft: Bool = false,
         action: @escaping () -> Void) {
        self.isLeft = isLeft
        self.action = action
    }
    
    var body: some View {
        Button {
            action()
        } label: {
            if isLeft {
                Image(ImageHandler.makeGeneralButtonString(aiachyState, button: .leftArrowButton))
                    .resizable()
                    .scaledToFit()
                    .frame(width: ACYdw(aiachyState, d: 0.02))
            } else {
                Image(ImageHandler.makeGeneralButtonString(aiachyState, button: .rightArrowButton))
                    .resizable()
                    .scaledToFit()
                    .frame(width: ACYdw(aiachyState, d: 0.02))
            }
        }
        .scaledToFit()
        .frame(width: ACYdw(aiachyState, d: 0.1))
        .buttonStyle(ACYNextButtonStyle())
        .environmentObject(aiachyState)
    }
}

#Preview {
    ACYNextButton { }
        .environmentObject(ACY_PREVIEWS_STATE)
}
