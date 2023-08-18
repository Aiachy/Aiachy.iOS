//
//  SettingsView.swift
//  Aiachy
//
//  Created by Mert Türedü on 31.07.2023.
//

import SwiftUI

struct SettingsView: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    @ObservedObject var presenter = SettingsPresenter()
    let router: HomeRouterPresenter
    
    var body: some View {
        ZStack {
            HomeBackground()
            VStack {
                Spacer()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(router: HomeRouterPresenter())
            .environmentObject(ACY_PREVIEWS_STATE)
    }
}
