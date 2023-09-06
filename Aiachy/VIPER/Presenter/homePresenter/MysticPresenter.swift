//
//  MysticPresenter.swift
//  Aiachy
//
//  Created by Mert Türedü on 31.07.2023.
//

import SwiftUI

class MysticPresenter: ObservableObject {
    
    @Published var selection: Int
    
    init(selection: Int = 0) {
        self.selection = selection
    }
    
    let ACYStarterLogoEntityData: [ACYmysticStarterLogoEntity] = [
        ACYmysticStarterLogoEntity(id: 0, selectedLogo: .tarotLogoSelected, unSelectedLogo: .tarotLogoUnSelected),
        ACYmysticStarterLogoEntity(id: 1, selectedLogo: .palmistryLogoSelected, unSelectedLogo: .palmistryLogoUnSelected),
        ACYmysticStarterLogoEntity(id: 2, selectedLogo: .crystalGazingStarterLogoSelected, unSelectedLogo: .crystalGazingStarterLogoUnSelected)
    ]
    
}
