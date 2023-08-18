//
//  MeditationView.swift
//  Aiachy
//
//  Created by Mert Türedü on 17.08.2023.
//

import SwiftUI

struct MeditationView: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    let router: GalaxyRouterPresenter
    
    var body: some View {
        VStack {
            
        }
        .environmentObject(aiachyState)
    }
}

#Preview {
    MeditationView(router: GalaxyRouterPresenter())
        .environmentObject(ACY_PREVIEWS_STATE)
}
