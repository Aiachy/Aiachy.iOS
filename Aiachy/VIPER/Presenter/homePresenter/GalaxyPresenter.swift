//
//  GalaxyPresenter.swift
//  Aiachy
//
//  Created by Mert Türedü on 31.07.2023.
//

import SwiftUI

class GalaxyPresenter: ObservableObject {
    
    let columns: [GridItem]
    
    init(columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)) {
        self.columns = columns
    }
    
}
