//
//  TuneListCloumn.swift
//  Aiachy
//
//  Created by Mert Türedü on 17.08.2023.
//

import SwiftUI

struct TuneListCloumn: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    let image: ImageHelper.ZodiacCompletion.ACYzodiacImage
    let text: ACYTextHelper.ACYZodiacText.ACYzodiacNameText
    let isPressedForDownload: Bool
    let isDownloading: Bool
    let isPlaying: Bool
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.makeAiachyColor(aiachyState, aiachyColor: .backgroundAlternativeColor), lineWidth: 2)
                .background(Color.makeAiachyColor(aiachyState, aiachyColor: .fifthColor)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(color: Color.makeAiachyColor(aiachyState, aiachyColor: .firstColor), radius: 4, x: 0, y: 4))
            VStack(spacing: 10) {
                Image.setACYZodiacImage(aiachyState, zodiac: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: ACYdw(aiachyState, d: 0.1))
                Text(text.rawValue.locale())
                    .foregroundStyle(Color.makeAiachyColor(aiachyState, aiachyColor: .backgroundColor))
                    .font(.aiachyFont(.cinzelBlack22))
                if isPressedForDownload {
                    if isDownloading {
                        VStack(alignment: .leading){
                            Text("3")
                                .foregroundStyle(Color.makeAiachyColor(aiachyState, aiachyColor: .backgroundColor))
                                .font(.aiachyFont(.roundedBlack8))
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundStyle(Color.makeAiachyColor(aiachyState, aiachyColor: .secondColor))
                                    .frame(width: ACYdw(aiachyState, d: 0.8),alignment: .trailing)
                            }
                            .frame(height: 5)
                            .background {
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.makeAiachyColor(aiachyState, aiachyColor: .backgroundAlternativeColor), lineWidth: 0.5)
                                    .padding(-2)
                            }
                            
                        }
                        .frame(maxWidth: ACYdw(aiachyState, d: 0.8),alignment: .leading)
                    } else {
                        if isPlaying {
                            Text(ACYTextHelper.ACYGalaxyText.ACYgalaxyTuneText.ACYgalaxyStopText.rawValue.locale())
                                .foregroundStyle(Color.makeAiachyColor(aiachyState, aiachyColor: .backgroundColor))
                                .font(.aiachyFont(.roundedBlack8))
                        } else {
                            Text(ACYTextHelper.ACYGalaxyText.ACYgalaxyTuneText.ACYgalaxyPlayText.rawValue.locale())
                                .foregroundStyle(Color.makeAiachyColor(aiachyState, aiachyColor: .backgroundColor))
                                .font(.aiachyFont(.roundedBlack8))
                        }
                    }
                } else {
                    Text(ACYTextHelper.ACYGalaxyText.ACYgalaxyTuneText.ACYgalaxyClickToDownloadText.rawValue.locale())
                        .font(.aiachyFont(.roundedBlack8))
                        .foregroundStyle(Color.makeAiachyColor(aiachyState, aiachyColor: .backgroundColor))
                }
            }
        }
        .frame(width: ACYdw(aiachyState, d: 0.9), height: ACYdw(aiachyState, d: 0.3))
    }
}

#Preview {
    ZStack {
        HomeBackground()
        TuneListCloumn(image: .aquarius, text: .AquariusZodiac, isPressedForDownload: true, isDownloading: true, isPlaying: false)
    }
    .environmentObject(ACY_PREVIEWS_STATE)
}
