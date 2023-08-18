//
//  PalmistryStarterView.swift
//  Aiachy
//
//  Created by Mert Türedü on 15.08.2023.
//

import SwiftUI

struct PalmistryStarterView: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    @State var isOnAppear: Bool = false

    var body: some View {
        ZStack {
            HomeBackground()
            VStack {
                Image.setACYMysticStarterImage(aiachyState, mysticStarterImage: .palmistryStarterImage2)
                    .resizable()
                    .scaledToFit()
                    .offset(x: isOnAppear ? ACYdw(aiachyState, d: 0.2) : ACYdw(aiachyState, d: 0.5))
                    .opacity(isOnAppear ? 1 : 0)
                Image.setACYMysticStarterImage(aiachyState, mysticStarterImage: .palmistryStarterImage3)
                    .resizable()
                    .scaledToFit()
                    .offset(x: isOnAppear ? 0 : ACYdw(aiachyState, d: 0.5))
                    .opacity(isOnAppear ? 1 : 0)
                Image.setACYMysticStarterImage(aiachyState, mysticStarterImage: .palmistryStarterImage1)
                    .resizable()
                    .scaledToFit()
                    .offset(x: isOnAppear ? ACYdw(aiachyState, d: -0.1) : ACYdw(aiachyState, d: 0.5))
                    .opacity(isOnAppear ? 1 : 0)
            }
            ACYMysticTitleAndDescriptionText(fontType: .CinzelBlack30, 
                                             title: .palmistryStarterTitle,
                                             description: .palmistyrStarterDescription)
        }
        .onAppear { withAnimation(.spring) { isOnAppear = true } }
        .onDisappear { withAnimation(.spring) { isOnAppear = false } }
        .environmentObject(aiachyState)
    }
}

#Preview {
    PalmistryStarterView(isOnAppear: true)
        .environmentObject(ACY_PREVIEWS_STATE)
}
