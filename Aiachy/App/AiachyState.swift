//
//  AiachyState.swift
//  Aiachy
//
//  Created by Mert Türedü on 18.05.2023.
//

import SwiftUI



class AiachyState: ObservableObject {
    
    @Published var user: User
    @Published var isGuest: Bool
    @Published var isNeedUpdateZodiacData: Bool
    
    init(user: User = User(),
         isGuest: Bool = false,
         isNeedUpdateZodiacData: Bool = false) {
        self.user = user
        self.isGuest = isGuest
        self.isNeedUpdateZodiacData = isNeedUpdateZodiacData
    }
}

extension AiachyState {
    
}
