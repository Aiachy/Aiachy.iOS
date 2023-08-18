//
//  ACYTextHelper.swift
//  Aiachy
//
//  Created by Mert Türedü on 17.05.2023.
//

import Foundation

struct ACYTextHelper {
    //MARK: ACYTextHelper - General
    struct ACYGeneralText {
        enum ACYNameText: String {
            case ClockNameText = "ClockNameText"
        }
        enum ACYappButtonText: String {
            case BackButton = "BackButton"
            case ContinueButton = "ContinueButton"
            case LoginButton = "LoginButton"
            case GuestButton = "GuestButton"
            case ResetKey = "ResetKey"
            case RegisterButton = "RegisterButton"
            case TryAgainButton = "TryAgainButton"
            case ChooseLocationButton = "ChooseLocationButton"
            case PreRegistrationButton = "PreRegistrationButton"
            case yesButton = "yesButton"
            case noButton = "noButton"
        }
        enum ACYappAlertMassageText: String {
            case notUserHaveConnection = "notUserHaveConnection"
            case notUserIsOlder = "notUserIsOlder"
            case notUserHavePlace = "notUserHavePlace "
            case appError = "AppError"
            case areYouSure = "areYouSure"
        }
    }
    
    //MARK: ACYTextHelper - TextField
    struct ACYTextFieldText {
        //TextField - Name
        enum ACYappTextfieldText: String {
            case MailPhoneTextField = "MailPhoneTextField"
            case PasswordTextField = "PasswordTextField"
            case AgainPasswordTextField = "AgainPasswordTextField"
            case PhoneTextField = "PhoneTextField"
            case MainTextField = "MainTextField"
            case NameTextField = "NameTextField"
            case SurnameTextField = "SurnameTextField"
            case MailTextField = "MailTextField"
            case PlaceTextField = "PlaceTextField"
        }
        //TextField - Error
        enum ACYappTextfieldErrorText: String {
            case EmailWrong = "EmailWrong"
            case PasswordWrong = "PasswordWrong"
            //--
            case NameNotFillWrong = "NameNotFillWrong"
            case NameMinCharacterWrong = "NameMinCharacterWrong"
            case SurnameMinCharacterWrong = "SurnameMinCharacterWrong"
            case SurnameNotFillWrong = "SurnameNotFillWrong"
            case MailNotFillWrong = "MailNotFillWrong"
            case PasswordNotFillWrong = "PasswordNotFillWrong"
            case PasswordAgainNotFillWrong = "PasswordAgainNotFillWrong"
            case PasswordNotSame = "PasswordNotSame"
            //--
            case PasswordMinCharacterWrong = "PasswordMinCharacterWrong"
            case MailCharactersWrong = "MailCharactersWrong"
            case PhoneCharactersWrong = "PhoneCharactersWrong"
            //--
            case MailCantFoundWrong = "MailCantFound"
            case PhoneCantFoundWrong = "PhoneCantFound"
            case PasswordCantFoundWrong = "PasswordCantFound"
            //--
            case MailUsedBefore = "MailUsedBefore"
        }
    }
    // MARK: ACYTextHelper - Content
    struct ACYContentText {
        enum ACYContentTitle: String {
            case galaxyTuneTitle = "galaxyTuneTitle"
            case galaxymeditationTitle = "galaxymeditationTitle"
        }
    }
    struct ACYGalaxyText {
        enum ACYgalaxyTuneText: String {
            case ACYgalaxyPlayText = "ACYgalaxyPlayText"
            case ACYgalaxyStopText = "ACYgalaxyStopText"
            case ACYgalaxyClickToDownloadText = "ACYgalaxyClickToDownloadText"
        }
    }
    // Content - Auth
    struct ACYAuthText {
        enum ACYauthTitleText: String {
            case LoginScreenViewTitle = "LoginScreenViewTitle"
            case ZodiacSelectionViewTitle = "ZodiacSelectionViewTitle"
            case RegisterViewTitle = "RegisterViewTitle"
            case AscendantSelectionViewTitle = "AscendantSelectionViewTitle"
            case AttentionViewTitle = "AttentionViewTitle"
        }
        enum ACYauthDescriptionText: String {
            case LoginScreenViewDescription = "LoginScreenViewDescription"
            case RegisterViewDescription = "RegisterViewDescription"
            case AscendantSelectionViewDescription = "AscendantSelectionViewDescription"
            case AscendantSelectionViewGuideUserDescription = "AscendantSelectionViewGuideUserDescription"
            case AttentionViewDescription = "AttentionViewDescription"
            case AttentionViewDescriptionLink = "AttentionViewDescriptionLink" //Remember: Custom Link to Twitter adress
        }
        enum ACYprivacyPolicyText: String {
            case PrivacyPolicyTitle = "PrivacyPolicyTitle"
            case PrivacyPolicyDescrpition = "PrivacyPolicyDescrpition"
            case TermsConditionsTitle = "TermsConditionsTitle"
            case TermsConditionsDescription = "TermsConditionsDescription"
            case PrivacyTermWay = "PrivacyTermWay"
        }
        enum ACYonboardingTitleText: String {
            case HeartofAstrologyViewTitle = "HeartofAstrologyViewTitle"
            case SecretOfTheStarsViewTitle = "SecretOfTheStarsViewTitle"
            case YourFutureViewTitle = "YourFutureViewTitle"
        }
        enum ACYonboardingDescriptionText: String {
            case HeartofAstrologyViewDescription = "HeartofAstrologyViewDescription"
            case SecretOfTheStarsViewDescription = "SecretOfTheStarsViewDescription"
            case YourFutureViewDescription = "YourFutureViewDescription"
        }
    }
    // Content - Love
    struct ACYLoveText {
        enum ACYloveTitleText: String {
            case loveAttentionTitle = "loveAttentionTitle"
        }
    }
    // Content - Mystic
    struct ACYMysticText {
        enum ACYmysticTitleText: String {
            case tarotStarterTitle = "tarotStarterTitle"
            case palmistryStarterTitle = "palmistryStarterTitle"
            case crystalGazingStarterTitle = "crystalGazingStarterTitle"
        }
        
        enum ACYmysticDescriptionText: String {
            case tarotStarterDescription = "tarotStarterDescription"
            case palmistyrStarterDescription = "mysticStarterDescription"
            case crystalGazingStarterDescription = "crystalGazingStarterDescription"
        }
    }
    // MARK: ACYTextHelper - Zodiac
    struct ACYZodiacText {
        // Zodiac - Name
        enum ACYzodiacNameText: String {
            case PiscesZodiac = "PiscesZodiac"
            case AriesZodiac = "AriesZodiac"
            case AquariusZodiac = "AquariusZodiac"
            case GeminiZodiac = "GeminiZodiac"
            case LibraZodiac = "LibraZodiac"
            case VirgoZodiac = "VirgoZodiac"
            case CapricornZodiac = "CapricornZodiac"
            case SagittariusZodiac = "SagittariusZodiac"
            case LeoZodiac = "LeoZodiac"
            case ScorpioZodiac = "ScorpioZodiac"
            case TaurusZodiac = "TaurusZodiac"
            case CancerZodiac = "CancerZodiac"
        }
        // Zodiac - Date
        enum ACYzodiacDateText: String {
            case AquariusZodiacShortedDate = "AquariusZodiacShortedDate"
            case AriesZodiacShortedDate = "AriesZodiacShortedDate"
            case GeminiZodiacShortedDate = "GeminiZodiacShortedDate"
            case LibraZodiacShortedDate = "LibraZodiacShortedDate"
            case VirgoZodiacShortedDate = "VirgoZodiacShortedDate"
            case CapricornZodiacShortedDate = "CapricornZodiacShortedDate"
            case SagittariusZodiacShortedDate = "SagittariusZodiacShortedDate"
            case ScorpioZodiacShortedDate = "ScorpioZodiacShortedDate"
            case TaurusZodiacShortedDate = "TaurusZodiacShortedDate"
            case CancerZodiacShortedDate = "CancerZodiacShortedDate"
            case LeoZodiacShortedDate = "LeoZodiacShortedDate"
            case PiscesZodiacShortedDate = "PiscesZodiacShortedDate"
        }
    }
}

