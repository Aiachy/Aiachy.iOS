//
//  OracleView.swift
//  Aiachy
//
//  Created by Mert Türedü on 22.08.2023.
//

import SwiftUI
//MARK: -  OracleView - View -
struct OracleView: View {
    
    @StateObject var presenter: OraclePresenter
    let aiachyState: AiachyState
    let router: ProfileRouterPresenter
        
    init(aiachy aiachyState: AiachyState,
         router: ProfileRouterPresenter) {
        self._presenter = StateObject(wrappedValue: OraclePresenter(aiachy: aiachyState,
                                                                    router: router))
        self.aiachyState = aiachyState
        self.router = router
    }
    
    var body: some View {
        ZStack {
            HomeBackground()
            VStack {
                //MARK: OracleView - backButton
                backButton
                //MARK: OracleView - sections
                sections
                //MARK: OracleView - tableView
                tableView
               Spacer()
            }
        }
        .onChange(of: presenter.currentIndex, perform: { newValue in
            if newValue == 0 {
                presenter.buttonText = .subscribeOccult
            } else if newValue == 1 {
                presenter.buttonText = .subscribeOracle
            }
        })
        .environmentObject(aiachyState)
    }
}
//MARK: - OracleView - Preview -
#Preview("OracleView") {
    OracleView(aiachy: ACY_PREVIEWS_STATE, router: ProfileRouterPresenter())
}
//MARK: - OracleView - Extension -
extension OracleView {
    //MARK: OracleView - backButton
    private var backButton: some View {
            ZStack{
                ACYViewTitleText(title: TextHandler.makeSettingsString(aiachy: aiachyState,
                                                                       settings: .oracleTitle))
                HStack {
                    ACYPassButton(isItBackButton: true, text: .back) {
                        router.navigate(to: .settings)
                    }
                    Spacer()
                }
            }
            .padding(.all)
    }
    //MARK: OracleView - sections
    private var sections: some View {
        HStack {            
            let index = presenter.currentIndex
            
            ACYSectionButton(isSelected: .constant((index == 0)), text: .occult) {
                presenter.currentIndex = 0
            }
            ACYSectionButton(isSelected: .constant((index == 1)), text: .oracle) {
                presenter.currentIndex = 1
            }
        }
    }
    //MARK: OracleView - tableView
    private var tableView: some View {
        TabView(selection: $presenter.currentIndex.animation(.easeInOut), content:  {
            OracleColumns(isOracled: .constant(presenter.checkOracle()),
                          topCurrentIndex: .constant(0),
                          entitys: presenter.oracleOccultData){presenter.purchase()}.tag(0)
            OracleColumns(isOracled: .constant(presenter.checkOracle()),
                          topCurrentIndex: .constant(1),
                          entitys: presenter.oracleOracleData){presenter.purchase()}.tag(1)
        })
        .tabViewStyle(.page(indexDisplayMode: .never))
        
    }
    
}
