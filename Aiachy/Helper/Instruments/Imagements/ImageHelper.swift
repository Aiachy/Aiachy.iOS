//
//  ImageHelper.swift
//  Aiachy
//
//  Created by Mert Türedü on 14.05.2023.
//

import Foundation

struct ImageHelper {
    
    enum aiachyThemeImage {
        case AiachyLight
        case AiachyDark
    }
    
    struct ACYAppImage {
        enum ACYappImage: String {
            case appLogo = "appLogo"
        }
        
        enum ACYalertImage: String {
            case notUserHaveConnection = "notUserHaveConnection"
            case notAscendantSelection = "authAscendantSelectionBackground"
        }
        
        enum ACYonboardingImage: String {
            case authHeart = "authHeart"
            case secretStar = "authSecretStar"
            case yourFuture = "authYourFuture"
        }
        
        enum button: String {
            case rightArrowButton = "rightArrowButton"
            case leftArrowButton = "leftArrowButton"
        }
        
        enum ACYtabBarLogo: String {
            case mysticLogoUnSelectedButton = "mysticLogoUnSelectedButton"
            case mysticLogoSelectedButton = "mysticLogoSelectedButton"
            case loveLogoUnSelectedButton = "loveLogoUnSelectedButton"
            case loveLogoSelectedButton = "loveLogoSelectedButton"
            case galaxyLogoUnSelectedButton = "galaxyLogoUnSelectedButton"
            case galaxyLogoSelectedButton = "galaxyLogoSelectedButton"
            case settingsLogoUnSelectedButton = "settingsLogoUnSelectedButton"
            case settingsLogoSelectedButton = "settingsLogoSelectedButton"            
        }
        
        enum background: String {
            case authBackgroundSymbol1 = "authBackgroundSymbol1"
            case authBackgroundSymbol2 = "authBackgroundSymbol2"
            case authLoginBackground = "authLoginBackground"
            case authAscendantSelectionBackground = "authAscendantSelectionBackground"
            case privacyTermsBackground = "privacyTermsBackground"
        }
    }
    
    struct ZodiacCompletion {
        enum ACYzodiacImage: String {
            case aquarius = "Aquarius"
            case aries = "Aries"
            case cancer = "Cancer"
            case capricorn = "Capricorn"
            case gemini = "Gemini"
            case leo = "Leo"
            case libra = "Libra"
            case pisces = "Pisces"
            case sagittarius = "Sagittarius"
            case scorpion = "Scorpion"
            case taurus = "Taurus"
            case virgo = "Virgo"
        }
        
        enum zodiacAlt: String {
            case altAquarius = "AquariusAlternative"
            case altAries = "AriesAlternative"
            case altCancer = "CancerAlternative"
            case altCapricorn = "CapricornAlternative"
            case altGemini = "GeminiAlternative"
            case altLeo = "LeoAlternative"
            case altLibra = "LibraAlternative"
            case altPisces = "PiscesAlternative"
            case altSagittarius = "SagittariusAlternative"
            case altScorpion = "ScorpionAlternative"
            case altTaurus = "TaurusAlternative"
            case altVirgo = "VirgoAlternative"
        }
    }
    
    
    struct AuthCompletion {
        enum authCompletion: String {
            case attention = "attention"
        }
    }
    struct ACYMysticCompletion {
        enum ACYmysticStarterImage: String {
            case tarotStarterImage1 = "tarotStarterImage1"
            case tarotStarterImage2 = "tarotStarterImage2"
            case palmistryStarterImage1 = "palmistryStarterImage1"
            case palmistryStarterImage2 = "palmistryStarterImage2"
            case palmistryStarterImage3 = "palmistryStarterImage3"
            case crystalGazingStarterImage1 = "crystalGazingStarterImage1"
            case crystalGazingStarterImage2 = "crystalGazingStarterImage2"
        }
        
        enum ACYmysticStarterLogo: String {
            case crystalGazingStarterLogoSelected = "crystalGazingStarterLogoSelected"
            case crystalGazingStarterLogoUnSelected = "crystalGazingStarterLogoUnSelected"
            case palmistryStarterLogoSelected = "palmistryStarterLogoSelected"
            case palmistryStarterLogoUnSelected = "palmistryStarterLogoUnSelected"
            case tarotStarterLogoSelected = "tarotStarterLogoSelected"
            case tarotStarterLogoUnSelected = "tarotStarterLogoUnSelected"
        }
    }
    struct ACYGalaxyCompletion {
        enum ACYGalaxyLogo: String {
            case tuneLogo = "tuneLogo"
            case maditation = "meditationLogo"
        }
    }
    struct LoveCompletion {
        enum loveCompletion: String {
            case loveAttention = "loveAttention"
        }
    }
}

