//
//  ACYTitleAndDescriptionText.swift
//  Aiachy
//
//  Created by Mert Türedü on 20.07.2023.
//

import SwiftUI

struct ACYTitleAndDescriptionText: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    @State var isHaveDescription: Bool = true
    var title: String
    var description: String?
    
    var body: some View {
        LazyVStack(spacing: 10) {
            //MARK: authTitleAndDescription - Title for all Auth
            Text(title)
                .font(.aiachyFont(.cinzelBlack20))
                .foregroundColor(Color.makeAiachyColor(aiachyState, aiachyColor: .firstColor))
            if isHaveDescription {
                //MARK: authTitleAndDescription - Description for all Auth
                Text(description!)
                    .font(.aiachyFont(.oldItalic14))
                    .foregroundColor(Color.makeAiachyColor(aiachyState, aiachyColor: .secondColor))
                    .padding(.horizontal)
            }
        }
        .multilineTextAlignment(.center)
        .frame(height: ACYdh(aiachyState, d: isHaveDescription ? ACY_SML_SIZE : ACY_UPMIN_SIZE))
        .makeAccessibilitysForUITest(identifier: "ACYTitleAndDescriptionTextID")

    }
}

struct AuthTitleAndDescription_Previews: PreviewProvider {
    static var previews: some View {
        ACYTitleAndDescriptionText(title: "Title Text",
                                   description: "Description")
        .environmentObject(ACY_PREVIEWS_STATE)
    }
}
