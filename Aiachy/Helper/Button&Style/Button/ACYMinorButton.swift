//
//  ACYMinorButton.swift
//  Aiachy
//
//  Created by Mert Türedü on 16.07.2023.
//

import SwiftUI

struct ACYMinorButton: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    var text: TextHelper.AlertCompletion.button
    @State var isBlack: Bool? 
    var action: () -> ()
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(TextHandler.makeAlertButtonString(aiachy: aiachyState, button: text))
                .frame(width: ACYdw(aiachyState, d: 0.25))
        }
        .frame(width: ACYdw(aiachyState, d: 0.31),
               height: ACYdh(aiachyState, d: 0.066))
        .buttonStyle(ACYMinorButtonStyle(isBlack: isBlack))
        .environmentObject(aiachyState)
        .makeAccessibilitysForUITest(identifier: "ACYMinorButtonID")
    }
}

struct ACYErrorButton_Previews: PreviewProvider {
    
    
    static var previews: some View {
        ACYMinorButton(text: .yes, isBlack: true) {  }
            .environmentObject(ACY_PREVIEWS_STATE)
    }
}
