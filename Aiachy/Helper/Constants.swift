//
//  Constants.swift
//  Aiachy
//
//  Created by Mert Türedü on 16.05.2023.
//

import SwiftUI

//MARK: Constants - UserDefaults Key
let ACYUserDefaults = UserDefaults.standard
let ACYThemeKey = "AiachyTheme"
let ACYUserID = "UserID"
//MARK: Constants - Times
let ACY_MIN_TIME: Double = 0.1
let ACY_MED_TIME: Double = 0.5
let ACY_LNG_TIME: Double = 1.0
let ACY_LRG_TIME: Double = 2.0
let ACY_MAX_TIME: CGFloat = 3
let ACY_GRADE_TIME: Double = 4
//MARK: Constants - Size
let ACY_MIKRO_SIZE: Double = 0.04
let ACY_MAKRO_SIZE: Double = 0.05
let ACY_MIN_SIZE: Double = 0.07
let ACY_ALTSML_SIZE: Double = 0.15
let ACY_SML_SIZE: Double = 0.2
let ACY_UPSML_SIZE: Double = 0.23
let ACY_ALTMED_SIZE: Double = 0.25
let ACY_MED_SIZE: Double = 0.35
let ACY_UPMED_SIZE: Double = 0.45
let ACY_LNG_SIZE: Double = 0.6
let ACY_LRG_SIZE: Double = 0.7
let ACY_MAX_SIZE: Double = 0.8
let ACY_FULL_SIZE: Double = 1
let ACY_UI_WIDTH_SIZE = UIScreen.main.bounds.width
let ACY_UI_HEIGHT_SIZE = UIScreen.main.bounds.height
//MARK: Constant - for previews
let ACY_PREVIEWS_STATE = AiachyState(user:
                                        User(userZodiac: UserZodiac(zodiac: 0),
                                            deviceInfo:
                                                DeviceInfo(phoneWidth: ACY_UI_WIDTH_SIZE,
                                                           phoneHeight: ACY_UI_HEIGHT_SIZE)))
//MARK: Constant - firebase collection
let ACY_USERS_COLLECTION: String = "users"
let ACY_ZODIAC_COLLECTION: String = "zodiac"
let ACY_EXECUTIVE_COLLECTION: String = "executive"
let ACY_GALAXY_COLLECTION: String = "galaxy"

let ACY_ZODIAC_INFO_PATH: String = "zodiacInfo"
