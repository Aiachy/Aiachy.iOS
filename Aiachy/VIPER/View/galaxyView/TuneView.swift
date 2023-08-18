//
//  TuneView.swift
//  Aiachy
//
//  Created by Mert Türedü on 16.08.2023.
//

import SwiftUI

struct TuneView: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    @ObservedObject var presenter = TunePresenter()
    let router: GalaxyRouterPresenter
    
    var body: some View {
        ZStack {
            HomeBackground()
            VStack {
                ZStack{
                    ACYViewTitleText(title: .galaxyTuneTitle)
                    HStack {
                        ACYPassButton(isItBackButton: true, text: .BackButton) {
                            router.navigate(to: .galaxy)
                        }
                        Spacer()
                    }
                    .padding()
                }
            }
        }
        .environmentObject(aiachyState)
    }
}

#Preview {
    TuneView(router: GalaxyRouterPresenter())
        .environmentObject(ACY_PREVIEWS_STATE)
}
