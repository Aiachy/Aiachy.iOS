//
//  GalaxyListCloumn.swift
//  Aiachy
//
//  Created by Mert Türedü on 17.08.2023.
//

import SwiftUI

struct GalaxyListCloumn: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    let title: ACYTextHelper.ACYContentText.ACYContentTitle
    let image: ImageHelper.ACYGalaxyCompletion.ACYGalaxyLogo
    let action: () -> ()
    
    var body: some View {
        Button(action: {action()}, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke()
                VStack(spacing: 20) {
                    Image.setACYGalaxyLogo(aiachyState, galaxyLogo: image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: ACYdw(aiachyState, d: 0.15))
                    ACYViewTitleText(title: title)
                    
                }
            }
        })
        .frame(width: ACYdw(aiachyState, d: 0.4),
               height: ACYdh(aiachyState, d: 0.2))
    }
}


#Preview {
    GalaxyListCloumn(title: .galaxyTuneTitle, 
                     image: .maditation,
                     action: {
        
    })
        .environmentObject(ACY_PREVIEWS_STATE)
}
