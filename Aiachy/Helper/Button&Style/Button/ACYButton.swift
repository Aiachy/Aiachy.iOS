//
//  ACYButton.swift
//  Aiachy
//
//  Created by Mert Türedü on 17.05.2023.
//

import SwiftUI

struct ACYButton: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    @State var buttonText: TextHelper.GeneralCompletion.button? = nil
    @State var contentText: TextHelper.GeneralCompletion.contentButton? = nil
    let action: () -> Void
    
    var body: some View {
            Button {
                action()
            } label: {
                if let checkedButtonText = buttonText {
                    Text(TextHandler.makeGeneralButtonString(aiachy: aiachyState,
                                                             button: checkedButtonText))
                    .frame(width: ACYdw(aiachyState, d: 0.7))
                } else if let checkedContentButton = contentText {
                    Text(TextHandler.makeGeneralContentButtonString(aiachy: aiachyState,
                                                                    contentButton: checkedContentButton))
                }
            }
            .frame(width: ACYdw(aiachyState, d: 0.78),
                   height: ACYdh(aiachyState, d: 0.067))
            .buttonStyle(ACYButtonStyle())
            .environmentObject(aiachyState)
            .makeAccessibilitysForUITest(identifier: "ACYButtonID")
    }
}


#Preview {
    ACYButton(buttonText: .continue) {
        
    }
    .environmentObject(ACY_PREVIEWS_STATE)
}
