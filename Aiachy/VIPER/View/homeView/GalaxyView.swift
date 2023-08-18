//
//  GalaxyView.swift
//  Aiachy
//
//  Created by Mert Türedü on 31.07.2023.
//

import SwiftUI

struct GalaxyView: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    @ObservedObject var presenter = GalaxyPresenter()
    let router: GalaxyRouterPresenter
    
    var body: some View {
        ZStack {
            HomeBackground()
            VStack {
                LazyVGrid(columns: presenter.columns, content: {
                    GalaxyListCloumn(title: .galaxyTuneTitle, 
                                     image: .tuneLogo) {
                        router.navigate(to: .tune)
                    }
                    GalaxyListCloumn(title: .galaxymeditationTitle, 
                                     image: .maditation) {
                        router.navigate(to: .meditation)
                    }
                    
                })
                Spacer()
            }
            .environmentObject(aiachyState)
        }
    }
}

struct GalaxyView_Previews: PreviewProvider {
    static var previews: some View {
        GalaxyView(router: GalaxyRouterPresenter())
            .environmentObject(ACY_PREVIEWS_STATE)
    }
}
