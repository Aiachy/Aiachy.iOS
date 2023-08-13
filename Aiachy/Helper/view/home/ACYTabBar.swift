//
//  ACYTabBar.swift
//  Aiachy
//
//  Created by Mert Türedü on 12.08.2023.
//

import SwiftUI

struct ACYTabBar: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    let router: HomeRouterPresenter
    
    var body: some View {
        LazyHStack {
            
            ACYTabBarCircle {
                makeImageWithZodiacInt(aiachy: aiachyState)
            } action: {
                
            }

            
            ACYTabBarCircle {
                Image.setACYButtonImage(aiachyState, button: .mysticLogoButton)
            } action: {
                
            }

        }
    }
}

#Preview {
    ACYTabBar(router: HomeRouterPresenter())
        .environmentObject(ACY_PREVIEWS_STATE)
}

struct ACYTabBarCircle<T: View>: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    let contentView: () -> T
    let action: () -> ()

   

    var body: some View {
        
        Button(action: {
            action()
        }, label: {
            ZStack {
                contentView()
                Circle()
                    .stroke(Color.makeAiachyColor(aiachyState, aiachyColor: .fifthColor), lineWidth: 2)
                    .background(Color.makeAiachyColor(aiachyState, aiachyColor: .backgroundAlternativeColor).clipShape(Circle()))
            }
        })
        .frame(width: ACYdw(aiachyState, d: 0.15))
        .scaledToFit()
    }
}
