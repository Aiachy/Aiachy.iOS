//
//  ACYAlertEntity.swift
//  Aiachy
//
//  Created by Mert Türedü on 14.08.2023.
//

import Foundation

struct ACYAlertEntity {
    var title: ACYTextHelper.ACYGeneralText.ACYappAlertMassageText?
    var image: ImageHelper.ACYAppImage.ACYalertImage?
    var firstButtonText: ACYTextHelper.ACYGeneralText.ACYappButtonText?
    var secondButtonText: ACYTextHelper.ACYGeneralText.ACYappButtonText?
    var isNeedImage: Bool?
    var isShowingAlert: Bool = false
    var isNeedSecondButton: Bool?
    var levelError: Int?
    var typeError: Int?
    var firstAction: (() -> ())?
    var secondAction: (() -> ())?
}
