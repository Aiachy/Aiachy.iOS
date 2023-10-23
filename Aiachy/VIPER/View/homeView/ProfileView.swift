//
//  ProfileView.swift
//  Aiachy
//
//  Created by Mert Türedü on 31.07.2023.
//

import SwiftUI
//MARK: ProfileView - View
struct ProfileView: View {
    
    @StateObject var presenter: SettingsPresenter
    let aiachyState: AiachyState
    let router: ProfileRouterPresenter
    
    init(aiachy aiachyState: AiachyState,
         homeRouter: HomeRouterPresenter,
         router: ProfileRouterPresenter) {
        self._presenter = StateObject(wrappedValue: SettingsPresenter(aiachyState: aiachyState,
                                                                      homeRouter: homeRouter,
                                                                      router: router))
        self.aiachyState = aiachyState
        self.router = router
    }
    
    var body: some View {
        ZStack {
            HomeBackground()
            VStack(spacing: 20){
                //MARK: Settings View - settingsSections
                settingsSections
                Spacer()
                ACYButton(buttonText: .logout) {
                    presenter.checkPreferedLogin()
                }
            }
        }
        .environmentObject(aiachyState)
    }
}
#Preview("ProfileView") {
    ProfileView(aiachy: ACY_PREVIEWS_STATE, 
                 homeRouter: HomeRouterPresenter(),
                 router: ProfileRouterPresenter())
}
//MARK: - ProfileView - extension -
extension ProfileView {
    //MARK: ProfileView - settingsSections
    var settingsSections: some View {
        VStack(spacing: 15) {
            //MARK: ProfileView - AicyCash -
            ACYDualButton(settingsLogo: .aicyCashLogo,
                          text: .aicyCashTitle)
            { makeSecondButtonView(buttonType: 0, text: String(aiachyState.user.userOracle.wrappedAicyCash)) }
        firstAction: { presenter.navigateToSettingsView(to: .aicyCash)  }
        secondAction: { }
            //MARK: ProfileView -Oracle -
            ACYDualButton(settingsLogo: .oracleLogo,
                          text: .oracleTitle)
            { makeSecondButtonView(buttonType: 1, text: aiachyState.user.userOracle.wrappedOraclePackage) }
        firstAction: {  presenter.navigateToSettingsView(to: .oracle) }
        secondAction: { }
            //MARK: ProfileView - Language -
            ACYDualButton(settingsLogo: .languageLogo,
                          text: .languageTitle)
            { makeSecondButtonView(buttonType: 2, text: aiachyState.user.aiachyInfo.aiachyLanguageInfo.wrappedLanguage) }
        firstAction: {  presenter.navigateToSettingsView(to: .language) }
        secondAction: { }
            //MARK: ProfileView - Theme -
            ACYDualButton(settingsLogo: .themeLogo,
                          text: .themeTitle)
            { makeSecondButtonView(buttonType: 3, text: aiachyState.user.aiachyInfo.wrappedTheme) }
        firstAction: {  presenter.navigateToSettingsView(to: .theme) }
        secondAction: { }
        }
        .padding(.vertical)
    }
    
}
//MARK: - ProfileView - extension -
extension ProfileView {
    //MARK: ProfileView - makeSecondButtonView -
    @ViewBuilder
    private func makeSecondButtonView(buttonType: Int, text: String) -> some View {
        if buttonType == 0 {
            HStack { Text(text); Text("A").font(FontHandler.aiachyFont(.cinzelBold14)) }
        } else if buttonType == 1 {
            Text(makeOracle(with: text))
        } else if buttonType == 2 {
            Text(text)
        } else if buttonType == 3 {
            Text(makeThemeText(with: text))
        }
    }
    //MARK: ProfileView - makeOracle -
    private func makeOracle(with text: String) -> String {
        if text == "None" {
            return  TextHandler.makeSettingsString(aiachy: aiachyState, settings: .oracleHelper)
        } else {
            return makeBetterOracle(with: text)
        }
    }
    //MARK: ProfileView - makeBetterOracle -
    private func makeBetterOracle(with text: String) -> String {
        if text == "Oracle.Occult" {
            return TextHandler.makeGeneralSectionButtonString(aiachy: aiachyState, sectionButton: .occult)
        } else if text == "Oracle.Occult" {
            return TextHandler.makeGeneralSectionButtonString(aiachy: aiachyState, sectionButton: .oracle)
        } else {
            return "None"
        }
    }
    //MARK: ProfileView - makeThemeText -
    private func makeThemeText(with text: String) -> String {
        if text == "Light" {
            return TextHandler.makeSettingsString(aiachy: aiachyState,
                                                  settings: .themeLightHelper)
        } else if text == "Dark" {
            return TextHandler.makeSettingsString(aiachy: aiachyState,
                                                  settings: .themeLightHelper)
        } else {
            return ""
        }
    }
}
