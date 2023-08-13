//
//  ACYTextFieldStyle.swift
//  Aiachy
//
//  Created by Mert Türedü on 17.07.2023.
//

import SwiftUI

struct ACYTextFieldStyle: TextFieldStyle {
    
    @EnvironmentObject var aiachyState: AiachyState
    let height: CGFloat
    let text: String
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        ZStack{
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.makeAiachyColor(aiachyState, aiachyColor: .secondColor))
            Color.makeAiachyColor(aiachyState, aiachyColor: .backgroundAlternativeColor)
                .cornerRadius(5)
                .padding(.all,1)
            VStack(alignment: .leading) {
                Text(text.locale())
                    .font(.aiachyFont(.roundedRegular10))
                    .foregroundColor(.makeAiachyColor(aiachyState, aiachyColor: .firstColor))
                    .padding(.init(top: 5, leading: 5, bottom: 0, trailing: 0))
                configuration.body
                    .font(.aiachyFont(.roundedMedium16))
                    .foregroundColor(.makeAiachyColor(aiachyState, aiachyColor: .firstColor))
                    .padding(.init(top: 0, leading: 5, bottom: 5, trailing: 0))
            }
        }
        .frame(height: height)
    }
}
