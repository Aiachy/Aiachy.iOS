//
//  LoveView.swift
//  Aiachy
//
//  Created by Mert Türedü on 31.07.2023.
//

import SwiftUI
//MARK: LoveView - View
struct LoveView: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    @ObservedObject var presenter: LovePresenter
    
    init(router: HomeRouterPresenter ) {
        self.presenter = LovePresenter(router: router)
    }
    
    var body: some View {
        ZStack {
            HomeBackground()
            VStack(spacing: 20){
                //MARK: LoveView - Tittle
                ACYTitleAndDescriptionText(isHaveDescription: false,
                                           title: ACYTextHelper.ACYLoveText.ACYloveTitleText.loveAttentionTitle.rawValue)
                //MARK: LoveView - Attention Image
                Image.setACYLoveCompletion(aiachyState, love: .loveAttention)
                    .resizable()
                    .scaledToFit()
                    .padding(.all)
                button
            }
        }
        .environmentObject(aiachyState)
    }
}
//MARK: LoveView - Preview
#Preview {
    LoveView(router: HomeRouterPresenter())
        .environmentObject(ACY_PREVIEWS_STATE)
}

extension LoveView {
    var button: some View {
        //MARK: LoveView - Button
        ACYButton(text: ACYTextHelper.ACYGeneralText.ACYappButtonText.PreRegistrationButton.rawValue) {
            presenter.makeAlert()
        }
    }
}
