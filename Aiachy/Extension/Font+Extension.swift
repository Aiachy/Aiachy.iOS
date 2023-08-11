//
//  Font+Extension.swift
//  Aiachy
//
//  Created by Mert Türedü on 17.05.2023.
//

import SwiftUI

extension Font {
    static func aiachyFont(_ fontType: FontHandler.aiachyFontType) -> Font {
        switch fontType {
            
        case .cinzelBold12:
            return FontHandler.CinzelBold12
        case .cinzelBold14:
            return FontHandler.CinzelBold14
            
        case .cinzelBlack20:
            return FontHandler.CinzelBlack20
            
        case .oldItalic10:
            return FontHandler.OldItalic10
        case .oldItalic14:
            return FontHandler.OldItalic14
        case .oldBold14:
            return FontHandler.OldBold14
        case .oldRegular10:
            return FontHandler.OldRegular10
            
        case .roundedRegular10:
            return FontHandler.RoundedRegular10
            
        case .roundedMedium10:
            return FontHandler.RoundedMedium10
        case .roundedMedium16:
            return FontHandler.RoundedMedium16
            
        case .roundedBold14:
            return FontHandler.RoundedBold14
        case .roundedBold16:
            return FontHandler.RoundedBold16
            
        case .roundedBlack8:
            return FontHandler.RoundedBlack8

        }
    }
}
