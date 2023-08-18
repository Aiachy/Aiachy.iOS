//
//  HomeView.swift
//  Aiachy
//
//  Created by Mert Türedü on 19.05.2023.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    @ObservedObject var presenter = HomePresenter()
    
    var body: some View {
        ZStack {
            HomeBackground()
            VStack{
                Text("Hoem ROuter")
                Spacer()
            }
        }
        .environmentObject(aiachyState)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ACY_PREVIEWS_STATE)
    }
}
