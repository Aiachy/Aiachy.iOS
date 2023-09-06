//
//  GermanLanguage.swift
//  Aiachy
//
//  Created by Mert Türedü on 23.08.2023.
//

import Foundation

struct GermanLanguage {
    
    //MARK: - GermanLanguage - textHelperGeneralCompletion -
    typealias textHelperGeneralCompletion = TextHelper.GeneralCompletion
    let generalButton: [textHelperGeneralCompletion.button:String] = [
        .back: "Zurück",
        .continue: "Weiter",
        .login: "Anmelden",
        .guest: "Gast",
        .resetPassword: "Passwort vergessen?",
        .register: "Begib dich auf ein mystisches Abenteuer",
        .chooseLocation: "Wähle deinen Standort",
        .preRegistration: "Vorabregistrierung",
        .logout: "Abmelden"
    ]
    
    let generalFlag: [textHelperGeneralCompletion.flag:String] = [
        .unitedArabEmirates: "Vereinigte Arabische Emirate",
        .germany: "Deutschland",
        .denmark: "Dänemark",
        .france: "Frankreich",
        .unitedKingdom: "Vereinigtes Königreich",
        .greece: "Griechenland",
        .italy: "Italien",
        .poland: "Polen",
        .romania: "Rumänien",
        .russianFederation: "Russische Föderation",
        .türkiye: "Türkei",
        .ukraine: "Ukraine",
        .unitedStates: "Vereinigte Staaten"
    ]
    
    //MARK: - GermanLanguage - textHelperAlertCompletion -
    typealias textHelperAlertCompletion = TextHelper.AlertCompletion
    let alert: [textHelperAlertCompletion.alert:String] = [
        .notUserHaveConnection: "Bitte stellen Sie sicher, dass Sie mit dem Internet verbunden sind",
        .notUserIsOlder: "Bitte geben Sie Ihr Alter an. Sie müssen älter als 13 Jahre sein",
        .notUserHavePlace: "Sie haben keinen Ort ausgewählt. Bitte wählen Sie Ihren Ort",
        .areYouSure: "Sind Sie sicher?",
        .appError: "App-Fehler",
        .needToRegister: "Sie müssen sich registrieren",
        .notReady: "Diese Seite ist in dieser Version der App noch nicht bereit."
    ]
    let alertButton: [textHelperAlertCompletion.button:String] = [
        .tryAgain: "Erneut versuchen",
        .yes: "Ja",
        .no: "Nein",
        .okey: "In Ordnung"
    ]
    
    //MARK: - GermanLanguage - TextFieldCompletion -
    typealias textHelperTextFieldCompletion = TextHelper.TextFieldCompletion
    let textField: [textHelperTextFieldCompletion.textField:String] = [
        .mailPhone: "Mail/Telefon",
        .password: "Passwort",
        .againPassword: "Passwort wiederholen",
        .phone: "Telefon",
        .name: "Vorname",
        .surname: "Nachname",
        .mail: "Mail",
        .place: "Ort"
    ]
    let textFieldError: [textHelperTextFieldCompletion.error:String] = [
        .emailWrong: "Ihre E-Mail ist falsch",
        .passwordWrong: "Ihr Passwort ist falsch",
        .nameNotFill: "Bitte geben Sie Ihren Vornamen an",
        .nameMinCharacter: "Der Vorname muss mindestens 2 Zeichen lang sein",
        .surnameMinCharacter: "Der Nachname muss mindestens 2 Zeichen lang sein",
        .surnameNotFill: "Bitte geben Sie Ihren Nachnamen an",
        .mailNotFill: "Bitte geben Sie Ihre E-Mail an",
        .passwordNotFill: "Bitte geben Sie Ihr Passwort an",
        .passwordAgainNotFill: "Bitte wiederholen Sie Ihr Passwort",
        .passwordNotSame: "Die Passwörter stimmen nicht überein",
        .passwordMinCharacter: "Das Passwort muss mindestens 6 Zeichen lang sein",
        .mailCharactersWrong: "Ihre E-Mail-Adresse ist nicht kompatibel",
        .phoneCharactersWrong: "Ihr Telefon ist nicht kompatibel",
        .mailCantFound: "Ihre E-Mail ist inkorrekt",
        .phoneCantFound: "Ihre Telefonnummer ist inkorrekt",
        .passwordCantFound: "Ihr Passwort ist inkorrekt",
        .mailUsedBefore: "Diese E-Mail wurde bereits verwendet"
    ]
    
    // MARK: - GermanLanguage - AuthCompletion -
    typealias textHelperAuthCompletion = TextHelper.AuthCompletion
    let auth: [textHelperAuthCompletion.auth:String] = [
        .loginScreenTitle: "Öffne die Tore zur Astrologie, tritt in die Welt von Aiachy ein",
        .zodiacSelectionTitle: "Die Zeit ist gekommen, deine Zukunft zu erfahren",
        .registerTitle: "Entfalte dein Sternzeichen-Potenzial",
        .ascendantSelectionTitle: "Erleuchte deine innere Strahlkraft",
        .attentionTitle: "ACHTUNG",
        .loginScreenDescription: "Entdecke die Geheimnisse der Astrologie, tauche ein in die bezaubernde Welt von Aiachy und erforsche das faszinierende Reich der Sternzeichen",
        .registerDescription: "Trete Aiachy bei für ein personalisiertes Horoskop-Erlebnis! Lassen Sie uns Ihre Sternzeichen-Informationen mit Ihren vertraulichen Details anpassen und Sie auf eine einzigartige Reise mitnehmen",
        .ascendantSelectionDescription: "Begib dich auf eine transformative Reise mit deinem Aszendenten. Entfalte die innere Kraft",
        .ascendantSelectionViewGuideDescription: "Wähle Geburtsdatum und -zeit",
        .attentionDescription: "Die Anwendung ist noch nicht vollständig abgemeldet. Es ist sehr normal, auf Fehler zu stoßen. Wenn Sie auf einen stoßen und nach einer Lösung suchen möchten, können Sie uns diese schnell über den Hilfebereich senden. Die App wird mit Ihrer Unterstützung zum ersten und einzigen Mal in diesem Genre erscheinen. Vergessen Sie nicht, Spaß zu haben, während Sie die App nutzen",
        .attentionSecondDescription: "Updates kommen am 21. jeden Monats. Überprüfen Sie unseren Twitter"
    ]
    let authOnboarding: [textHelperAuthCompletion.onboarding:String] = [
        .heartofAstrologyTitle: "Du bist im Herzen der Astrologie",
        .secretOfTheStarsTitle: "Enthülle die Geheimnisse der Sterne",
        .yourFutureTitle: "Möchtest du deine Zukunft wissen?",
        .heartofAstrologyDescription: "Dein Horoskop besser zu kennen, ermöglicht dir, bessere Pläne für die Zukunft zu machen",
        .secretOfTheStarsDescription: "Entdecke die Geheimnisse der Sterne, enthülle die Feinheiten der Astrologie, alles hier an einem Ort",
        .yourFutureDescription: "Aiachy wird dich auf einem schönen Weg leiten und dir kleine Tipps für deine Zukunft geben",
        .privacyPolicy: "Durch Erstellen eines Kontos stimmen Sie unserer Datenschutzrichtlinie und den Nutzungsbedingungen zu."
    ]
    let authHelperAuth: [textHelperAuthCompletion.helperAuth:String] = [
        .clock: "Uhr"
    ]
    
    // MARK: - GermanLanguage - AuthCompletion -
    typealias textHelperHomeCompletion = TextHelper.HomeCompletion
    let home: [textHelperHomeCompletion.home:String] = [
        .horoscope:"Horoskop",
        .ascendant:"Aszendent",
        .compatibility:"Kompatibilität",
        .notUsable: "Nicht verfügbar. Sie müssen abonnieren.",
        .notHaveAscendant: "Sie müssen das Aszendentenzeichen auswählen."
    ]
    let homeDate: [textHelperHomeCompletion.date:String] = [
        .yesterday:"Gestern",
        .today:"Heute",
        .tomorrow:"Morgen",
    ]
    let homeStatus: [textHelperHomeCompletion.status:String] = [
        .universe:"Universum",
        .enlightenment:"Erleuchtung",
        .touch:"Berührung",
        .love:"Liebe",
        .strength:"Stärke",
        .creative:"Kreativ",
        .foundation:"Fundament"
    ]
    
    // MARK: - GermanLanguage - LoveCompletion -
    typealias textHelperLoveCompletion = TextHelper.LoveCompletion
    let love: [textHelperLoveCompletion.love:String] = [
        .attentionTitle:"Die Zukunft der Liebe liegt nur ein kleines Stück weiter, also habe Geduld"
    ]
    
    // MARK: - GermanLanguage - MysticCompletion -
    typealias textHelperMysticCompletion = TextHelper.MysticCompletion
    let mystic: [textHelperMysticCompletion.mystic:String] = [
        .tarotTitle:"Tarot",
        .palmistryTitle:"Handlesekunst",
        .crystalGazingTitle:"Kristallkugel",
        .tarotDescription:"Nicht zur Verwendung verfügbar",
        .palmistyrDescription:"Nicht zur Verwendung verfügbar",
        .crystalGazingDescription:"Nicht zur Verwendung verfügbar"
    ]
    
    // MARK: - GermanLanguage - GalaxyCompletion -
    typealias textHelperGalaxyCompletion = TextHelper.GalaxyCompletion
    let galaxy: [textHelperGalaxyCompletion.galaxy:String] = [
        .tuneTitle: "Melodie",
        .meditationTitle: "Meditation"
    ]
    let galaxyTune: [textHelperGalaxyCompletion.tune:String] = [
        .play: "Abspielen",
        .stop: "Stop",
        .clickToDownload: "Klicken zum Herunterladen",
        .downloading: "Herunterladen"
    ]
    
    //MARK: - GermanLanguage - SettingsCompletion -
    typealias textHelperSettingsCompletion = TextHelper.SettingsCompletion
    let settings: [textHelperSettingsCompletion.settings:String] = [
        .aicyCashTitle: "AicyCash",
        .oracleTitle: "Orakel",
        .oracleHelper: "Keine",
        .languageTitle: "Sprache",
        .themeTitle: "Thema",
        .themeLightHelper: "Hell",
        .themeDarkHelper: "Dunkel",
    ]
    let settingsLanguage: [textHelperSettingsCompletion.language:String] = [
        .currentLanguage: "Aktuelle Sprache",
        .otherLanguage: "Andere Sprache"
    ]
    let settingsOracle: [textHelperSettingsCompletion.oracle:String] = [
        .packageZodiacTitle: "Sternzeichen",
        .packageZodiacItem1: "Ihr astrologisches Chart wird überquellen vor kosmischer Weisheit, die Ihnen hilft, die Richtung Ihres Lebens besser zu verstehen.",
        .packageZodiacItem2: "Die Tarotkarten werden neue Türen für Sie öffnen und Ihre Intuition stärken",
        .packageZodiacItem3: "Neue musikalische Frequenzen werden Ihre Seele erheben und neue emotionale Landschaften für Sie öffnen.",
        .packageOracleTitle: "Orakel",
        .packageOracleItem1: "Sie werden Zugang zu den Funktionen aller verfügbaren Pakete haben, was Sie in jedem Bereich gut ausgestattet macht.",
        .packageOracleItem2: "Innovative Funktionen werden Ihnen zur Verfügung stehen, was Ihnen einen Schritt Vorsprung vor allen anderen gibt.",
        .packageOracleItem3: "Die Freundlichkeit, die Sie gezeigt haben, wird einen ewigen Abdruck auf den Herzen hinterlassen.",
        .packageOracleItem4: "Dieses Paket wird ein unverzichtbares Werkzeug sein, um Ihre Anwendung zu erhöhen und zu verbessern."
    ]
    
    // MARK: - GermanLanguage - ZodiacCompletion -
    typealias textHelperZodiacCompletion = TextHelper.ZodiacCompletion
    let zodiac: [textHelperZodiacCompletion.zodiac:String] = [
        .piscesZodiacName: "Fische",
        .piscesZodiacDate: "20. Feb - 20. Mär",
        .ariesZodiacName: "Widder",
        .ariesZodiacDate: "21. Mär - 20. Apr",
        .aquariusZodiacName: "Wassermann",
        .aquariusZodiacDate: "21. Jan - 19. Feb",
        .geminiZodiacName: "Zwillinge",
        .geminiZodiacDate: "21. Mai - 21. Jun",
        .libraZodiacName: "Waage",
        .libraZodiacDate: "24. Sep - 23. Okt",
        .virgoZodiacName: "Jungfrau",
        .virgoZodiacDate: "24. Aug - 23. Sep",
        .capricornZodiacName: "Steinbock",
        .capricornZodiacDate: "22. Dez - 20. Jan",
        .sagittariusZodiacName: "Schütze",
        .sagittariusZodiacDate: "23. Nov - 21. Dez",
        .leoZodiacName: "Löwe",
        .leoZodiacDate: "23. Jul - 23. Aug",
        .scorpioZodiacName: "Skorpion",
        .scorpioZodiacDate: "24. Okt - 22. Nov",
        .taurusZodiacName: "Stier",
        .taurusZodiacDate: "21. Apr - 20. Mai",
        .cancerZodiacName: "Krebs",
        .cancerZodiacDate: "22. Jun - 22. Jul"
    ]
}

