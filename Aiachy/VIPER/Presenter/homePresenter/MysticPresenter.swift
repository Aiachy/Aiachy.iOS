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
    
    let ACYStarterLogoEntityData: [ACYStarterLogoEntity] = [
        ACYStarterLogoEntity(id: 0, selectedLogo: .tarotStarterLogoSelected, unSelectedLogo: .tarotStarterLogoUnSelected),
        ACYStarterLogoEntity(id: 1, selectedLogo: .palmistryStarterLogoSelected, unSelectedLogo: .palmistryStarterLogoUnSelected),
        ACYStarterLogoEntity(id: 2, selectedLogo: .crystalGazingStarterLogoSelected, unSelectedLogo: .crystalGazingStarterLogoUnSelected)
    ]
    
}
