//
//  AttentionView.swift
//  Aiachy
//
//  Created by Mert Türedü on 19.07.2023.
//

import SwiftUI

struct AttentionView: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    @ObservedObject var presenter = AttentionPresenter()
    let router: AuthRouterPresenter
    
    var body: some View {
        VStack(spacing: 20) {
            //NextPatchTODO: Fix this 
            HStack {
                Spacer()
            }
            //MARK: AttentionView - Attention Image
            attentionImage
            //MARK: AttentionView - Title And Description
            titleAndDescription
            //MARK: AttentionView - Twitter
            twitterDescription
            Spacer()
            //MARK: AttentionView - Continue Button
            continueButton
            Spacer()
        }
        .overlay {
            if presenter.acyAlertEntity.isShowingAlert {
                ACYAlertView(acyAlertEntity: presenter.acyAlertEntity)
            }
        }
        .environmentObject(aiachyState)
        .makeAccessibilitysForUITest(identifier: "AttentionViewID")
    }
}
//MARK: AttentionView - Preview
#Preview {
    AttentionView(router: AuthRouterPresenter())
        .background(AuthBackground())
        .environmentObject(ACY_PREVIEWS_STATE)
}
//MARK: AttentionView - extension
extension AttentionView {
    //MARK: AttentionView - Image
    private var attentionImage: some View {
        Image.setACYAuthCompletion(aiachyState, auth: .attention)
            .resizable()
            .scaledToFit()
            .frame(width: ACYdw(aiachyState, d: 0.8))
            .padding(.bottom)
    }
    //MARK: AttentionView - Title And Description
    private var titleAndDescription: some View {
        VStack(spacing: 20) {
            Text(ACYTextHelper.ACYAuthText.ACYauthTitleText.AttentionViewTitle.rawValue.locale())
                .foregroundColor(.makeAiachyColor(aiachyState, aiachyColor: .firstColor))
                .font(.aiachyFont(.cinzelBlack20))
            
            Text(ACYTextHelper.ACYAuthText.ACYauthDescriptionText.AttentionViewDescription.rawValue.locale())
                .foregroundColor(.makeAiachyColor(aiachyState, aiachyColor: .firstColor))
                .font(.aiachyFont(.oldBold14))
        }
        .multilineTextAlignment(.center)
        .padding(.horizontal)
    }
    //MARK: AttentionView - Twitter
    private var twitterDescription: some View {
        Text(ACYTextHelper.ACYAuthText.ACYauthDescriptionText.AttentionViewDescriptionLink.rawValue.locale())
            .foregroundColor(.makeAiachyColor(aiachyState, aiachyColor: .secondColor))
            .font(.aiachyFont(.roundedBold16))
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .onTapGesture {
                presenter.openAppTwitter()
            }
    }
    //MARK: AttentionView - Continue Button
    private var continueButton: some View {
        ACYButton(text: ACYTextHelper.ACYGeneralText.ACYappButtonText.ContinueButton.rawValue) {
            presenter.makeReadyToApp(aiachy: aiachyState) {
                guard $0 else { return }
                router.isUserComplateAuthCompletion = true
                
            }
        }
        .disabledOpacited(bool: presenter.isReadyForApp, disabledOpacity: 0.4)
    }
}
