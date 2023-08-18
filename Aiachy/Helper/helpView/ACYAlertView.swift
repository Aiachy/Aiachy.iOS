//
//  ACYAlertView.swift
//  Aiachy
//
//  Created by Mert Türedü on 20.05.2023.
//

import SwiftUI

struct ACYAlertView: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    @State var acyAlertEntity: ACYAlertEntity
    
    var body: some View {
        ZStack {
            //MARK: ACYAlert - Blurbackground
            Color.makeAiachyColor(aiachyState,
                              aiachyColor: .backgroundBlurColor)
            .ignoresSafeArea(.all, edges: .all)
            Group{
                if acyAlertEntity.typeError == 0 {
                    titleButtonView
                } else if acyAlertEntity.typeError == 1 {
                    titleTwoButtonView
                } else if acyAlertEntity.typeError == 2 {
                    titleImageButtonView
                } else if acyAlertEntity.typeError == 3 {
                    titleImageTwoButtonView
                }
            }
            .background {
                alertViewBackground
            }
            .onAppear {
                
            }
            .onDisappear{
                
            }
            
        }
        .makeAccessibilitysForUITest(identifier: "ACYAlertViewID")
    }
}

struct alertView_Previews: PreviewProvider {

    static var acyAlertEntity = ACYAlertEntity(title: .appError, image: .notAscendantSelection, firstButtonText: .BackButton, secondButtonText: .BackButton, isNeedImage: false, isShowingAlert: true, isNeedSecondButton: true, levelError: 0, typeError: 1) {
        
    } secondAction: {
        
    }

    
    static var previews: some View {
        ZStack(content: {
            AuthBackground()
            ACYAlertView(acyAlertEntity: acyAlertEntity)

        })
            .environmentObject(ACY_PREVIEWS_STATE)
    }
}

extension ACYAlertView {
    
    var titleButtonView: some View {
        VStack {
            Spacer()
            alertTitleView
            Spacer()
            alertFirstButtonView
            Spacer()
        }
        .frame(width: ACYdw(aiachyState, d: ACY_MAX_SIZE),
               height: ACYdh(aiachyState, d: ACY_MED_SIZE))
    }
    
    var titleTwoButtonView: some View {
        VStack(spacing: 40) {
            alertTitleView
            HStack(spacing: 10) {
                alertFirstButtonView
                alertSecondButtonView
            }
        }
        .frame(width: ACYdw(aiachyState, d: ACY_MAX_SIZE),
               height: ACYdh(aiachyState, d: ACY_MED_SIZE))
    }
    
    var titleImageButtonView: some View {
        VStack(spacing: 20) {
            alertTitleView
            alertImageView
            alertFirstButtonView
        }
        .frame(width: ACYdw(aiachyState, d: ACY_MAX_SIZE),
               height: ACYdh(aiachyState, d: ACY_MED_SIZE))
    }
    
    var titleImageTwoButtonView: some View {
        VStack {
            alertTitleView
            alertImageView
            HStack(spacing: 10) {
                alertFirstButtonView
                alertSecondButtonView
            }
        }
        .frame(width: ACYdw(aiachyState, d: ACY_MAX_SIZE),
               height: ACYdh(aiachyState, d: ACY_MED_SIZE))
    }
    
}

extension ACYAlertView {
    
    @ViewBuilder
    //MARK: ACYAlertView - Title
    private var alertTitleView: some View {
        Text(acyAlertEntity.title!.rawValue.locale())
            .padding(.horizontal)
            .font(.aiachyFont(.cinzelBold14))
            .multilineTextAlignment(.center)

    }
    //MARK: ACYAlertView - first Button
    private var alertFirstButtonView: some View {
        ACYMinorButton(text: acyAlertEntity.firstButtonText!.rawValue) {
            acyAlertEntity.firstAction!()
        }
    }
    //MARK: ACYAlertView - second Button
    private var alertSecondButtonView: some View {
        ACYMinorButton(text: acyAlertEntity.secondButtonText!.rawValue) {
            acyAlertEntity.secondAction!()
        }
    }
    //MARK: ACYAlertView - image
    private var alertImageView: some View {
        Image.setACYAlertImage(aiachyState, alert: acyAlertEntity.image!)
            .resizable()
            .scaledToFit()
            .frame(width: ACYdw(aiachyState, d: ACY_LNG_SIZE), height: ACYdh(aiachyState, d: 0.1))
            .padding(.vertical)
    }
    //MARK: ACYAlertView - Alert View background
    private var alertViewBackground: some View {
        RoundedRectangle(cornerRadius: 15)
            .stroke(Color.makeAiachyColor(aiachyState,
                                      aiachyColor: .secondColor),lineWidth: 1)
            .background {
                Color.makeAiachyColor(aiachyState, aiachyColor: .backgroundColor)
                    .padding(.all,1)
                    .cornerRadius(15)
            }
            .scaledToFit()
            .frame(width: ACYdw(aiachyState, d: ACY_MAX_SIZE),
                   height: ACYdh(aiachyState, d: ACY_MED_SIZE))
    }
}
