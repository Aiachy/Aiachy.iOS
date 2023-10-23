//
//  ACYOracleColumnsEntity.swift
//  Aiachy
//
//  Created by Mert Türedü on 1.10.2023.
//

import Foundation

struct ACYOracleColumnsEntity {
    var id: Int
    var topImage: ImageHelper.SettingsCompletion.oracle
    var topText: TextHelper.SettingsCompletion.oracle
    var backgroundImage: ImageHelper.SettingsCompletion.oracle
    var elements: [ACYOracleColumnsEntityElement]
}

struct ACYOracleColumnsEntityElement {
    var id: Int
    var topImage: ImageHelper.SettingsCompletion.oracle
    var text: TextHelper.SettingsCompletion.oracle
}
