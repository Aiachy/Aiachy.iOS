//
//  EnglishUKLanguage.swift
//  Aiachy
//
//  Created by Mert Türedü on 23.08.2023.
//

import Foundation

struct EnglishUKLanguage {
    //MARK: - EnglishUKLanguage - textHelperGeneralCompletion -
    typealias textHelperGeneralCompletion = TextHelper.GeneralCompletion
    let generalButton: [TextHelper.GeneralCompletion.button:String] = [
        .back: "Back",
        .continue: "Continue",
        .login: "Log In",
        .guest: "Guest",
        .resetPassword: "Forgotten your password?",
        .register: "Embark on a Mystical Adventure",
        .chooseLocation: "Choose your location",
        .preRegistration: "Pre-registration",
        .logout: "Log Out"
    ]
    let generalFlag: [textHelperGeneralCompletion.flag:String] = [
        .unitedArabEmirates: "United Arab Emirates",
        .germany: "Germany",
        .denmark: "Denmark",
        .france: "France",
        .unitedKingdom: "United Kingdom",
        .greece: "Greece",
        .italy: "Italy",
        .poland: "Poland",
        .romania: "Romania",
        .russianFederation: "Russian Federation",
        .türkiye: "Turkey",
        .ukraine: "Ukraine",
        .unitedStates: "United States"
    ]
    //MARK: - EnglishLanguageUK - textHelperAlertCompletion -
    typealias textHelperAlertCompletion = TextHelper.AlertCompletion
    let alert: [textHelperAlertCompletion.alert:String] = [
        .notUserHaveConnection: "Please ensure you are connected to the internet",
        .notUserIsOlder: "Please enter your age. You must be older than 13 years",
        .notUserHavePlace: "You have not chosen your location. Please select your location",
        .areYouSure: "Are you sure?",
        .appError: "App error",
        .needToRegister: "You need to register",
        .notReady: "This page is not available in this version of the application."
    ]
    let alertButton: [textHelperAlertCompletion.button:String] = [
        .tryAgain: "Try Again",
        .yes: "Yes",
        .no: "No",
        .okey: "Okey"
    ]
    //MARK: - EnglishLanguageUK - textHelperTextFieldCompletion -
    typealias textHelperTextFieldCompletion = TextHelper.TextFieldCompletion
    let textField: [textHelperTextFieldCompletion.textField:String] = [
        .mailPhone: "Email/Phone",
        .password: "Password",
        .againPassword: "Repeat Password",
        .phone: "Phone",
        .name: "Name",
        .surname: "Surname",
        .mail: "Email",
        .place: "Location"
    ]
    let textFieldError: [textHelperTextFieldCompletion.error:String] = [
        .emailWrong: "Your email is incorrect",
        .passwordWrong: "Your password is incorrect",
        .nameNotFill: "Please enter your name",
        .nameMinCharacter: "Name must be a minimum of 2 characters",
        .surnameMinCharacter: "Surname must be a minimum of 2 characters",
        .surnameNotFill: "Please enter your surname",
        .mailNotFill: "Please enter your email",
        .passwordNotFill: "Please enter your password",
        .passwordAgainNotFill: "Please re-enter your password",
        .passwordNotSame: "Passwords do not match",
        .passwordMinCharacter: "Password must be a minimum of 6 characters",
        .mailCharactersWrong: "Your email address is not valid",
        .phoneCharactersWrong: "Your phone number is not valid",
        .mailCantFound: "Your email is incorrect",
        .phoneCantFound: "Your phone number is incorrect",
        .passwordCantFound: "Your password is incorrect",
        .mailUsedBefore: "This email has been used previously"
    ]
    // MARK: -  EnglishLanguageUK - AuthCompletion -
    typealias textHelperAuthCompletion = TextHelper.AuthCompletion
    let auth: [textHelperAuthCompletion.auth:String] = [
        .loginScreenTitle: "Unlock the Gates of Astrology, Enter Aiachy's World",
        .zodiacSelectionTitle: "The time has come to discover your future",
        .registerTitle: "Unleash Your Zodiac Potential",
        .ascendantSelectionTitle: "Illuminate Your Inner Radiance",
        .attentionTitle: "ATTENTION",
        .loginScreenDescription: "Unlock the Mysteries of Astrology, Dive into Aiachy's Enchanting World, and Explore the Fascinating Realm of Zodiac Wonders",
        .registerDescription: "Step into Aiachy for a personalised horoscope experience! Let us customise your zodiac information with your confidential details and take you on a unique journey",
        .ascendantSelectionDescription: "Embark on a Transformative Journey with Your Ascendant Sign and Unleash the Power Within",
        .ascendantSelectionViewGuideDescription: "Select date and time of birth",
        .attentionDescription: "The application is still not fully logged out. It is quite normal to encounter bugs. If you do encounter them and wish to look for a solution, you can quickly send it to us via the Help section. The app will make its debut in this genre with your support. Don't forget to have fun while using the app",
        .attentionSecondDescription: "Updates occur on the 21st of every month. Check Our Twitter"
    ]
    let authOnboarding: [textHelperAuthCompletion.onboarding:String] = [
        .heartofAstrologyTitle: "You are at the heart of astrology",
        .secretOfTheStarsTitle: "Unveil the Secrets of the Stars",
        .yourFutureTitle: "Do you wish to know your future",
        .heartofAstrologyDescription: "Understanding your horoscope better allows you to plan more effectively for the future",
        .secretOfTheStarsDescription: "Discover the Secrets of the Stars, Unveil the Intricacies of Astrology, All Here in One Place",
        .yourFutureDescription: "Aiachy will guide you along a beautiful path and provide you with little tips about your future",
        .privacyPolicy: "By creating an account, you agree to our Privacy Policy and Terms of Use."
    ]
    let authHelperAuth: [textHelperAuthCompletion.helperAuth:String] = [
        .clock: "Hour"
    ]
    // MARK: -  EnglishLanguageUK - HomeCompletion -
    typealias textHelperHomeCompletion = TextHelper.HomeCompletion
    let home: [textHelperHomeCompletion.home:String] = [
        .horoscope: "Horoscope",
        .ascendant: "Ascendant",
        .compatibility: "Compatibility",
        .notUsable: "Not available. Subscription required.",
        .notHaveAscendant: "You need to select the ascendant sign."
    ]
    let homeDate: [textHelperHomeCompletion.date:String] = [
        .yesterday: "Yesterday",
        .today: "Today",
        .tomorrow: "Tomorrow"
    ]
    let homeStatus: [textHelperHomeCompletion.status:String] = [
        .universe: "Universe",
        .enlightenment: "Enlightenment",
        .touch: "Touch",
        .love: "Love",
        .strength: "Strength",
        .creative: "Creative",
        .foundation: "Foundation"
    ]
    // MARK: - EnglishLanguageUK - LoveCompletion -
    typealias textHelperLoveCompletion = TextHelper.LoveCompletion
    let love: [textHelperLoveCompletion.love:String] = [
        .attentionTitle: "The future of love is just a little further ahead, so be patient"
    ]

    // MARK: - EnglishLanguageUK - MysticCompletion -
    typealias textHelperMysticCompletion = TextHelper.MysticCompletion
    let mystic: [textHelperMysticCompletion.mystic:String] = [
        .tarotTitle: "Tarot",
        .palmistryTitle: "Palmistry",
        .crystalGazingTitle: "Crystal Gazing",
        .tarotDescription: "Not available for use",
        .palmistyrDescription: "Not available for use",
        .crystalGazingDescription: "Not available for use"
    ]

    // MARK: - EnglishLanguageUK - GalaxyCompletion -
    typealias textHelperGalaxyCompletion = TextHelper.GalaxyCompletion
    let galaxy: [textHelperGalaxyCompletion.galaxy:String] = [
        .tuneTitle: "Tune",
        .meditationTitle: "Meditation"
    ]
    let galaxyTune: [textHelperGalaxyCompletion.tune:String] = [
        .play: "Play",
        .stop: "Stop",
        .clickToDownload: "Click to Download",
        .downloading: "Downloading"
    ]

    // MARK: - EnglishLanguageUK - SettingsCompletion -
    typealias textHelperSettingsCompletion = TextHelper.SettingsCompletion
    let settings: [textHelperSettingsCompletion.settings:String] = [
        .aicyCashTitle: "AicyCash",
        .oracleTitle: "Oracle",
        .oracleHelper: "None",
        .languageTitle: "Language",
        .themeTitle: "Theme",
        .themeLightHelper: "Light",
        .themeDarkHelper: "Dark"
    ]
    let settingsLanguage: [textHelperSettingsCompletion.language:String] = [
        .currentLanguage: "Current Language",
        .otherLanguage: "Other Language"
    ]
    let settingsOracle: [textHelperSettingsCompletion.oracle:String] = [
        .packageZodiacTitle: "Zodiac",
        .packageZodiacItem1: "Your astrological chart will brim with cosmic wisdom, aiding you to better understand the direction of your life.",
        .packageZodiacItem2: "The Tarot cards will open new avenues for you and bolster your intuition",
        .packageZodiacItem3: "New musical frequencies will uplift your soul and introduce you to new emotional landscapes.",
        .packageOracleTitle: "Oracle",
        .packageOracleItem1: "You will have access to the features of all available packages, making you well-prepared in every aspect.",
        .packageOracleItem2: "Innovative features will be at your fingertips, providing you with an edge over others.",
        .packageOracleItem3: "The kindness you have shown will leave a lasting impact on hearts.",
        .packageOracleItem4: "This package will become an indispensable asset to augment and enhance your application."
    ]

    // MARK: - EnglishLanguageUK - ZodiacCompletion -
    typealias textHelperZodiacCompletion = TextHelper.ZodiacCompletion
    let zodiac: [textHelperZodiacCompletion.zodiac:String] = [
        .piscesZodiacName: "Pisces",
        .piscesZodiacDate: "20 Feb - 20 Mar",
        .ariesZodiacName: "Aries",
        .ariesZodiacDate: "21 Mar - 20 Apr",
        .aquariusZodiacName: "Aquarius",
        .aquariusZodiacDate: "21 Jan - 19 Feb",
        .geminiZodiacName: "Gemini",
        .geminiZodiacDate: "21 May - 21 Jun",
        .libraZodiacName: "Libra",
        .libraZodiacDate: "24 Sept - 23 Oct",
        .virgoZodiacName: "Virgo",
        .virgoZodiacDate: "24 Aug - 23 Sept",
        .capricornZodiacName: "Capricorn",
        .capricornZodiacDate: "22 Dec - 20 Jan",
        .sagittariusZodiacName: "Sagittarius",
        .sagittariusZodiacDate: "23 Nov - 21 Dec",
        .leoZodiacName: "Leo",
        .leoZodiacDate: "23 Jul - 23 Aug",
        .scorpioZodiacName: "Scorpio",
        .scorpioZodiacDate: "24 Oct - 22 Nov",
        .taurusZodiacName: "Taurus",
        .taurusZodiacDate: "21 Apr - 20 May",
        .cancerZodiacName: "Cancer",
        .cancerZodiacDate: "22 Jun - 22 Jul"
    ]
}
