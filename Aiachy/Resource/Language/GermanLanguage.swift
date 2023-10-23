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
    let authTitle: [textHelperAuthCompletion.title:String] = [
        .loginScreenTitle: "Enthülle die Magie, Reise in Aiachys Reich",
        .crystalSelectionTitle: "Enthülle den mystischen Kristall deiner Geburt",
        .registerTitle: "Entfessele dein Sternzeichen-Potenzial",
        .ascendantSelectionTitle: "Erleuchte Deine Innere Strahlkraft",
        .attentionTitle: "ACHTUNG",
    ]

    
    let authDescription: [textHelperAuthCompletion.description:String] = [
        .loginScreenDescription: "Entschlüsseln Sie die Geheimnisse des Äthers, Betreten Sie Aiachy's Heiliges Heiligtum und Seien Sie Zeuge des Tanzes der Himmlischen Geister!",
        .crystalSelectionDescription: "Die Zeit ist gekommen, Ihre Zukunft zu erfahren",
        .registerDescription: "Treten Sie in Aiachy ein für ein personalisiertes Horoskop-Erlebnis! Lassen Sie uns Ihre Sternzeichen-Informationen mit Ihren vertraulichen Details anpassen und Sie auf eine einzigartige Reise mitnehmen",
        .ascendantSelectionDescription: "Begib Dich auf eine Transformative Reise mit Deinem Aszendenten und Entfessele die Innere Kraft",
        .ascendantSelectionViewGuideDescription: "Wählen Sie Geburtsdatum und -zeit",
        .attentionDescription: "Die Anwendung ist noch nicht vollständig abgemeldet. Es ist sehr normal, auf Fehler zu stoßen. Wenn Sie auf einen stoßen und nach einer Lösung suchen möchten. Sie können es uns schnell aus dem Hilfebereich senden. Die App wird mit Ihrer Unterstützung zum ersten und einzigen Mal in diesem Genre erscheinen. Vergessen Sie nicht, Spaß beim Verwenden der App zu haben",
        .attentionSecondDescription: "Das Update kommt am 21. jeden Monats. Überprüfen Sie Unseren Twitter"
    ]

    
    let authOnboarding: [textHelperAuthCompletion.onboarding:String] = [
        .heartofMysticTitle: "Du bist im Herzen des mystischen Universums",
        .secretOfTheStarsTitle: "Enthülle die Geheimnisse der Sterne",
        .yourFutureTitle: "Möchtest du deine Zukunft wissen?",
        .heartofMysticDescription: "Das Öffnen der Türen zu einer mystischen Welt ermöglicht es Ihnen, Ihre Zukunft effektiver zu planen",
        .secretOfTheStarsDescription: "Jenseits des Schleiers des Sterblichen Reichs, Tanze mit den Mystischen Flüstern der Sterne, Entwirre die Rätsel des Heiligen Kosmos",
        .yourFutureDescription: "Aiachy wird dich auf einem schönen Weg leiten und dir kleine Tipps für deine Zukunft geben",
    ]
    let authHelperAuth: [textHelperAuthCompletion.helperAuth:String] = [
        .clock: "Uhr",
        .privacyPolicy: "Durch Erstellen eines Kontos stimmen Sie unserer Datenschutzrichtlinie und den Nutzungsbedingungen zu."
    ]
    
    // MARK: - GermanLanguage - AuthCompletion -
    typealias textHelperHomeCompletion = TextHelper.HomeCompletion
    let home: [textHelperHomeCompletion.home:String] = [
        .aiachy:"Aiachy",
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
    let settingsOracle: [textHelperSettingsCompletion.oracle: String] = [
        .universalWisdomTitle: "Universelle Weisheit",
        .universalWisdomOccult1: "Wenn du den Fluss des Wissens des Universums schließt, werden tiefere Geheimnisse aus den mysteriösen Reichen zu dir fließen.",
        .universalWisdomOccult2: "Du wirst die Geheimnisse von morgen aus erster Hand bezeugen und die Fähigkeit erlangen, die Zukunft tiefer zu verstehen und zu entschlüsseln.",
        .universalWisdomOccult3: "Mit der Fähigkeit, Chakren umfassender zu beobachten, wirst du deine Fähigkeit verbessern, deine Tage zu interpretieren, und tiefer in die Führung deiner inneren Energie eintauchen.",
        .universalWisdomOccult4: "Insbesondere wirst du in der Lage sein, deine täglichen Einsichten tiefer zu prüfen und deine Initiativen klarer wahrzunehmen, und somit die Möglichkeit erhalten, deinen Rat detaillierter zu gestalten.",
        .universalWisdomOracle1: "Dieses spezielle Paket umfasst alle Funktionen der Universellen Weisheit des Okkulten.",
        .universalWisdomOracle2: "Diese heilige Unterstützung, die du anbietest, wird im Voraus erinnert und wird mit positiven Energien aus den Geheimnissen des Universums zu dir zurückkehren.",
        .universalWisdomOracle3: "Du wirst den ersten Zugang zu den neuen Funktionen im Beta-Test erhalten und den Weg für die kommenden Verbesserungen ebnen.",
        .universalWisdomOracle4: "Exklusive Visualisierungen der nahen Zukunft werden dir durch das Zugangstor präsentiert.",
        .thresholdOfTheSoulTitle: "Schwelle der Seele",
        .thresholdOfTheSoulOccult1: "Neue musikalische Frequenzen werden deine Seele erheben und neue emotionale Landschaften für dich öffnen.",
        .thresholdOfTheSoulOccult2: "Hinter den Toren des mysteriösen Reichs erwartet dich ein tieferer Zugang zu den Tiefen des Tarot, den schicksalhaften Linien deiner Hand und den Geheimnissen der Weltkugel.",
        .thresholdOfTheSoulOccult3: "Du wirst in die magische Welt der personalisierten Melodien eintreten und die verborgenen Melodien der Zukunft entdecken.",
        .thresholdOfTheSoulOccult4: "Du wirst die Möglichkeit haben, tiefer in das Geheimnis der personalisierten mysteriösen Steine einzutauchen.",
        .thresholdOfTheSoulOracle1: "Dieses spezielle Paket umfasst alle Funktionen der Schwelle der Seele des Okkulten.",
        .thresholdOfTheSoulOracle2: "Diese heilige Unterstützung, die du anbietest, wird im Voraus erinnert und wird mit positiven Energien aus den Geheimnissen des Universums zu dir zurückkehren.",
        .thresholdOfTheSoulOracle3: "Du wirst den ersten Zugang zu den neuen Funktionen im Beta-Test erhalten und den Weg für die kommenden Verbesserungen ebnen.",
        .thresholdOfTheSoulOracle4: "Exklusive Visualisierungen der nahen Zukunft werden dir durch das Zugangstor präsentiert."
    ]

    
    // MARK: - GermanLanguage - ZodiacCompletion -
    typealias textHelperSpiritualCompletion = TextHelper.SpiritualCompletion
    let crystalZodiac: [textHelperSpiritualCompletion.crystal:String] = [
        .ariesCrystal: "Amethyst",
        .taurusCrystal: "Tigerauge",
        .geminiCrystal: "Rosenquarz",
        .cancerCrystal: "Labradorit",
        .leoCrystal: "Granat",
        .virgoCrystal: "Mondstein",
        .libraCrystal: "Lapislazuli",
        .scorpioCrystal: "Turmalin",
        .sagittariusCrystal: "Obsidian",
        .capricornCrystal: "Bergkristall",
        .aquariusCrystal: "Aquamarin",
        .piscesCrystal: "Perle"
    ]

    let zodiac: [textHelperSpiritualCompletion.zodiac:String] = [
        .pisces: "Fische",
        .aries: "Widder",
        .aquarius: "Wassermann",
        .gemini: "Zwillinge",
        .libra: "Waage",
        .virgo: "Jungfrau",
        .capricorn: "Steinbock",
        .sagittarius: "Schütze",
        .leo: "Löwe",
        .scorpio: "Skorpion",
        .taurus: "Stier",
        .cancer: "Krebs"
    ]

    let dateZodiac: [textHelperSpiritualCompletion.dateZodiac:String] = [
        .piscesZodiacDate: "20. Feb - 20. Mär",
        .ariesZodiacDate: "21. Mär - 20. Apr",
        .aquariusZodiacDate: "21. Jan - 19. Feb",
        .geminiZodiacDate: "21. Mai - 21. Jun",
        .libraZodiacDate: "24. Sep - 23. Okt",
        .virgoZodiacDate: "24. Aug - 23. Sep",
        .capricornZodiacDate: "22. Dez - 20. Jan",
        .sagittariusZodiacDate: "23. Nov - 21. Dez",
        .leoZodiacDate: "23. Jul - 23. Aug",
        .scorpioZodiacDate: "24. Okt - 22. Nov",
        .taurusZodiacDate: "21. Apr - 20. Mai",
        .cancerZodiacDate: "22. Jun - 22. Jul"
    ]
}

