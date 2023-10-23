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
                .stroke(Color(ColorHandler.makeAiachyColor(aiachyState,
                                                           aiachyColor: isSelected ? .backgroundAlternativeColor : .fifthColor)),
                        lineWidth: 2)
                .background(
                    Color(ColorHandler.makeAiachyColor(aiachyState,
                                                       aiachyColor: isSelected ? .fourthColor :.backgroundAlternativeColor))
                    .clipShape(Circle())
                    .shadow(color: Color(ColorHandler.makeAiachyColor(aiachyState, aiachyColor: .fifthColor)), radius: 4, x: 0, y: 4)
                    .frame(width: ACYdw(aiachyState, d: isSelected ? entity.widthCircle - 0.005 : entity.widthCircle))
                )
                .frame(width: ACYdw(aiachyState, d: isSelected ? entity.widthCircle - 0.005 : entity.widthCircle))
            if entity.isZodiac ?? false {
                homeIcon
            } else if entity.isProfile ?? false {
                profileIcon
        }else {
                //MARK: ACYTabBarCircle - Logo Image
                Image(ImageHandler.makeHometabBarLogoString(aiachyState,
                                                            tabBarLogo: isSelected ? entity.selectedImage! : entity.unSelectedImage!))
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(Color(ColorHandler.makeAiachyColor(aiachyState,
                                                           aiachyColor: isSelected ? .backgroundAlternativeColor : .fourthColor)))
                    .frame(width: ACYdw(aiachyState, d: entity.widthImage))
                    .animation(.spring(), value: isSelected)
            }
        }
        .frame(width: ACYdw(aiachyState, d: entity.widthCircle))
        .environmentObject(aiachyState)
    }
}

#Preview("ACYTabBarCircle") {
//    ACYTabBarCircle(isSelected: false, entity: ACYTabBarEntity(id: 0,
//                                                              isZodiac: true,
//                                                              widthCircle: 0.16,
//                                                              widthImage: 0.08,
//                                                              routering: .home))
    ACYTabBarCircle(isSelected: true, entity: ACYTabBarEntity(id: 0,
                                                               isProfile: true,
                                                               widthCircle: 0.16,
                                                               widthImage: 0.08,
                                                               routering: .profile))
        .environmentObject(ACY_PREVIEWS_STATE)
}

extension ACYTabBarCircle {
    @ViewBuilder
    private var profileIcon: some View {
        if aiachyState.isAiachyReady {
            crystalIcon
        } else {
            if isSelected {
                Image(systemName: "gearshape.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: ACYdw(aiachyState, d: entity.widthImage))
                    .foregroundStyle(Color(ColorHandler.makeAiachyColor(aiachyState, aiachyColor: .backgroundColor)))
            } else {
                Image(systemName: "gearshape.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: ACYdw(aiachyState, d: entity.widthImage))
                    .foregroundStyle(Color(ColorHandler.makeAiachyColor(aiachyState, aiachyColor: .fifthColor)))
            }
        }
    }
    @ViewBuilder
    private var homeIcon: some View {
        if aiachyState.isAiachyReady {
            //MARK: ACYTabBarCircle - User Image
            makeZodiacImageWithZodiacInt(aiachy: aiachyState,
                                         zodiac: aiachyState.user.userSpiritual.wrappedZodiac, isAlternative: isSelected ? false : true)
                .resizable()
                .scaledToFit()
                .frame(width: ACYdw(aiachyState, d: entity.widthImage))
        } else {
            crystalIcon
        }
    }
    @ViewBuilder
    private var crystalIcon: some View {
        if isSelected {
            makeCrystalImageWithZodiacInt(aiachy: aiachyState,
                                          crystal: aiachyState.user.userSpiritual.wrappedZodiac)
            .resizable()
            .scaledToFit()
            .frame(width: ACYdw(aiachyState, d: entity.widthImage))
        } else {
            Image(ImageHandler.makeHometabBarLogoString(aiachyState, tabBarLogo: .crystalLogoUnSelected))
                .resizable()
                .scaledToFit()
                .frame(width: ACYdw(aiachyState, d: entity.widthImage))
        }
    }
    
}
