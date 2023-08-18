//
//  ACYTabBarCircle.swift
//  Aiachy
//
//  Created by Mert Türedü on 15.08.2023.
//

import SwiftUI

struct ACYTabBarCircle: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    let isSelected: Bool
    let entity: ACYTabBarEntity
    
    var body: some View {
        ZStack {
            //MARK: ACYTabBarCircle - Background Circle
            Circle()
                .stroke(Color.makeAiachyColor(aiachyState,
                                              aiachyColor: isSelected ? .backgroundAlternativeColor : .fifthColor),
                        lineWidth: 2)
                .background(
                    Color.makeAiachyColor(aiachyState,
                                          aiachyColor: isSelected ? .fourthColor :.backgroundAlternativeColor)
                    .clipShape(Circle())
                    .shadow(color: Color.makeAiachyColor(aiachyState, aiachyColor: .fifthColor), radius: 4, x: 0, y: 4)
                )
                .frame(width: ACYdw(aiachyState, d: isSelected ? entity.widthCircle - 0.005 : entity.widthCircle))
                .scaledToFit()
            if entity.isZodiac ?? false {
                //MARK: ACYTabBarCircle - User Image
                makeImageWithZodiacInt(aiachy: aiachyState, isAlternative: !isSelected)
                    .resizable()
                    .scaledToFit()
                    .frame(width: ACYdw(aiachyState, d: entity.widthImage))
            } else {
                //MARK: ACYTabBarCircle - Logo Image
                Image.setACYTabBarLogo(aiachyState, tabBarLogo: isSelected ? entity.selectedImage! : entity.unSelectedImage!)
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(Color.makeAiachyColor(aiachyState,
                                                           aiachyColor: isSelected ? .backgroundAlternativeColor : .fourthColor))
                    .frame(width: ACYdw(aiachyState, d: entity.widthImage))
                    .animation(.spring(), value: isSelected)
            }
        }
        .frame(width: ACYdw(aiachyState, d: entity.widthCircle))
    }
}

#Preview("ACYTabBarCircle") {
    ACYTabBarCircle(isSelected: true, entity: ACYTabBarEntity(id: 0, widthCircle: 0.15, widthImage: 0.12, routering: .home))
        .environmentObject(ACY_PREVIEWS_STATE)
}
