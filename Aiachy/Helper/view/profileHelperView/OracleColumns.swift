//
//  OracleColumns.swift
//  Aiachy
//
//  Created by Mert Türedü on 1.10.2023.
//

import SwiftUI
//MARK: - OracleColumns - View -
struct OracleColumns: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    @Binding var isOracled: Bool
    @Binding var topCurrentIndex: Int
    @State var currentIndex: Int = 0
    var entitys: [ACYOracleColumnsEntity]
    var action: () -> ()
    
    var body: some View {
        VStack(spacing:0) {
            TabView(selection: $currentIndex.animation(.linear)) {
                ForEach(entitys, id: \.id) { entity in
                    if entity.id == 0 {
                        oracles(entity: entity)
                    } else if entity.id == 1 {
                        oracles(entity: entity)
                    }
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            makeNextButton
                .scaledToFit()
            ACYButton(contentText: isOracled ? .subscribed : checkContentButton() ) {
                action()
            }
            .disabledOpacited(bool: isOracled, disabledOpacity: 0.6)
        }
    }
}

//MARK: - OracleColumns - Preview -
#Preview("OracleColumns") {
    OracleColumns(isOracled: .constant(false),
                  topCurrentIndex: .constant(0),
                  entitys: [ACYOracleColumnsEntity(id: 0,
                                                   topImage: .thresholdOfTheSoul,
                                                   topText: .universalWisdomTitle,
                                                   backgroundImage: .oracleOccult,
                                                   elements: [ACYOracleColumnsEntityElement(id: 0,
                                                                                            topImage: .oracleltem,
                                                                                            text: .universalWisdomOccult1),
                                                              ACYOracleColumnsEntityElement(id: 1,
                                                                                            topImage: .oracleltem,
                                                                                            text: .universalWisdomOccult2),
                                                              ACYOracleColumnsEntityElement(id: 2,
                                                                                            topImage: .oracleltem,
                                                                                            text: .universalWisdomOccult3),
                                                              ACYOracleColumnsEntityElement(id: 3,
                                                                                            topImage: .oracleltem,
                                                                                            text: .universalWisdomOccult4),])], action: {
        
    })
    .environmentObject(ACY_PREVIEWS_STATE)
}
//MARK: - OracleColumns - extension -
extension OracleColumns {
    
    private func checkContentButton() -> TextHelper.GeneralCompletion.contentButton {
        if topCurrentIndex == 0 {
            return .subscribeOccult
        } else if topCurrentIndex == 1 {
            return .subscribeOracle
        } else {
            return .subscribeOccult
        }
    }
    
    private var makeNextButton: some View {
        HStack {
            if currentIndex == 0 {
                Spacer()
                ACYNextButton {
                    withAnimation(.linear) {
                        currentIndex = 1
                    }
                }
            } else {
                ACYNextButton(isLeft: true) {
                    withAnimation(.linear) {
                        currentIndex = 0
                    }
                }
                Spacer()
            }
        }
        .padding(.horizontal)
    }
    
    //MARK: OracleColumns - oracles
    private func oracles(entity: ACYOracleColumnsEntity) -> some View {
        ZStack {
            //MARK: OracleColumns - Background
            Image(ImageHandler.makeSettingsOracleString(aiachyState, oracle: entity.backgroundImage))
                .resizable()
                .scaledToFit()
                .frame(width: ACYdw(aiachyState, d: 0.9))
                .opacity(0.1)
            VStack {
                //MARK: OracleColumns - topArticleColumn
                topArticleColumn(topImage: entity.topImage, topText: entity.topText)
                ScrollView(.vertical) {
                    //MARK: OracleColumns - articleColumn
                    articleColumn(elements: entity.elements)
                }
            }
        }
    }
    //MARK: OracleColumns - topArticleColumn
    private func topArticleColumn(topImage: ImageHelper.SettingsCompletion.oracle,
                                  topText title: TextHelper.SettingsCompletion.oracle) -> some View {
        ZStack {
            VStack(spacing: 0) {
                // Top Image
                Image(ImageHandler.makeSettingsOracleString(aiachyState, oracle: topImage))
                    .resizable()
                    .scaledToFit()
                    .frame(width: ACYdw(aiachyState, d: 0.9))
                    .padding(.vertical)
                
                //Top Text
                Text(TextHandler.makeSettingsOracleString(aiachy: aiachyState, oracle: title))
                    .font(FontHandler.aiachyFont(.cinzelBlack25))
                    .foregroundStyle(Color(ColorHandler.makeAiachyColor(aiachyState, aiachyColor: .fifthColor)))
            }
        }
    }
    //MARK: OracleColumns - articleColumn
    private func articleColumn(elements: [ACYOracleColumnsEntityElement]) -> some View {
        ForEach(elements, id: \.id) { element in
            VStack(spacing:0) {
                //Image
                Image(ImageHandler.makeSettingsOracleString(aiachyState, oracle: element.topImage))
                    .frame(width: ACYdw(aiachyState, d: 0.18))
                    .foregroundStyle(Color.black)
                //Text
                Text(TextHandler.makeSettingsOracleString(aiachy: aiachyState,
                                                          oracle: element.text))
                .multilineTextAlignment(.center)
                .font(FontHandler.aiachyFont(.roundedBold13))
                .foregroundStyle(Color(ColorHandler.makeAiachyColor(aiachyState, aiachyColor: .fifthColor)))
            }
            .padding(.horizontal,15)
        }
        
    }
    
}

