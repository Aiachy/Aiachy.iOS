//
//  AicyCashInteractor.swift
//  Aiachy
//
//  Created by Mert Türedü on 22.08.2023.
//

import Foundation

class AicyCashInteractor: ObservableObject {
    
    let aiachyState: AiachyState
    
    init(aiachy aiachyState: AiachyState) {
        
        self.aiachyState = aiachyState
    }
    
}
