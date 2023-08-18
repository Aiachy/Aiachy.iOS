//
//  ACYTabBar.swift
//  Aiachy
//
//  Created by Mert Türedü on 12.08.2023.
//

import SwiftUI
//MARL: ACYTabBar - View
struct ACYTabBar: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    let router: HomeRouterPresenter
    
    var body: some View {
        HStack(alignment: .center) {
            //MARL: ACYTabBar - ACYTabBarCircle
            ForEach(ACYTabBarEntityData , id:\.id) { tabBarValue in
                ACYTabBarCircle(isSelected: (router.currentView == tabBarValue.routering), entity: tabBarValue)
                    .onTapGesture {
                        withAnimation(.bouncy(duration: 0.3)) {
                            router.navigate(to: tabBarValue.routering)
                        }
                    }
            }
        }
        .frame(width: ACYdw(aiachyState, d: 1),height: ACYdh(aiachyState, d: 0.1))
        .background{ Color.makeAiachyColor(aiachyState, aiachyColor: .backgroundColor).ignoresSafeArea()}
        
    }
    //MARL: ACYTabBar - Data
    let ACYTabBarEntityData: [ACYTabBarEntity] = [
        ACYTabBarEntity(id: 0, 
                        isZodiac: true,
                        widthCircle: 0.16,
                        widthImage: 0.08,
                        routering: .home),
        ACYTabBarEntity(id: 1,
                        widthCircle: 0.16,
                        widthImage: 0.08,
                        routering: .mystic,
                        selectedImage: .mysticLogoSelectedButton,
                        unSelectedImage: .mysticLogoUnSelectedButton),
        ACYTabBarEntity(id: 2,
                        widthCircle: 0.19,
                        widthImage: 0.15,
                        routering: .galaxy,
                        selectedImage: .galaxyLogoSelectedButton,
                        unSelectedImage: .galaxyLogoUnSelectedButton),
        ACYTabBarEntity(id: 3,
                        widthCircle: 0.16,
                        widthImage: 0.08,
                        routering: .love,
                        selectedImage: .loveLogoSelectedButton,
                        unSelectedImage: .loveLogoUnSelectedButton),
        ACYTabBarEntity(id: 4,
                        widthCircle: 0.16,
                        widthImage: 0.065,
                        routering: .settings,
                        selectedImage: .settingsLogoSelectedButton,
                        unSelectedImage: .settingsLogoUnSelectedButton)
    ]
}
//MARL: ACYTabBar - Preview
#Preview("ACYTabBar") {
    ZStack {
        ACYTabBar(router: HomeRouterPresenter())
    }
    .environmentObject(ACY_PREVIEWS_STATE)
}
