//
//  DanishLanguage.swift
//  Aiachy
//
//  Created by Mert Türedü on 23.08.2023.
//

import Foundation

struct DanishLanguage {
    //MARK: - DanishLanguage - textHelperGeneralCompletion -
    typealias textHelperGeneralCompletion = TextHelper.GeneralCompletion
    let generalButton: [TextHelper.GeneralCompletion.button:String] = [
        .back: "Tilbage",
        .continue: "Fortsæt",
        .login: "Log ind",
        .guest: "Gæst",
        .resetPassword: "Glemt din adgangskode?",
        .register: "Påbegynd en mystisk eventyr",
        .chooseLocation: "Vælg din placering",
        .preRegistration: "Forregistrering",
        .logout: "Log ud"
    ]
    
    let generalFlag: [textHelperGeneralCompletion.flag:String] = [
        .unitedArabEmirates: "Forenede Arabiske Emirater",
        .germany: "Tyskland",
        .denmark: "Danmark",
        .france: "Frankrig",
        .unitedKingdom: "Storbritannien",
        .greece: "Grækenland",
        .italy: "Italien",
        .poland: "Polen",
        .romania: "Rumænien",
        .russianFederation: "Russiske Føderation",
        .türkiye: "Tyrkiet",
        .ukraine: "Ukraine",
        .unitedStates: "USA"
    ]
    
    //MARK: - DanishLanguage - textHelperAlertCompletion -
    typealias textHelperAlertCompletion = TextHelper.AlertCompletion
    let alert: [textHelperAlertCompletion.alert:String] = [
        .notUserHaveConnection: "Sørg for, at du er forbundet til internettet",
        .notUserIsOlder: "Indtast din alder. Du skal være ældre end 13 år",
        .notUserHavePlace: "Du har ikke valgt din placering. Vælg din placering",
        .areYouSure: "Er du sikker?",
        .appError: "App-fejl",
        .needToRegister: "Du skal tilmelde dig",
        .notReady: "Denne side er ikke klar i denne version af appen."
    ]
    
    let alertButton: [textHelperAlertCompletion.button:String] = [
        .tryAgain: "Prøv igen",
        .yes: "Ja",
        .no: "Nej",
        .okey: "Okay"
    ]
    //MARK: - DanishLanguage - TextFieldCompletion -
    typealias textHelperTextFieldCompletion = TextHelper.TextFieldCompletion
    let textField: [textHelperTextFieldCompletion.textField:String] = [
        .mailPhone: "Mail/Telefon",
        .password: "Adgangskode",
        .againPassword: "Gentag adgangskode",
        .phone: "Telefon",
        .name: "Navn",
        .surname: "Efternavn",
        .mail: "Mail",
        .place: "Placering"
    ]
    
    let textFieldError: [textHelperTextFieldCompletion.error:String] = [
        .emailWrong: "Din e-mail er forkert",
        .passwordWrong: "Din adgangskode er forkert",
        .nameNotFill: "Udfyld venligst dit navn",
        .nameMinCharacter: "Navnet skal have mindst 2 tegn",
        .surnameMinCharacter: "Efternavnet skal have mindst 2 tegn",
        .surnameNotFill: "Udfyld venligst dit efternavn",
        .mailNotFill: "Udfyld venligst din mail",
        .passwordNotFill: "Udfyld venligst din adgangskode",
        .passwordAgainNotFill: "Udfyld venligst din adgangskode igen",
        .passwordNotSame: "Adgangskoderne er ikke ens",
        .passwordMinCharacter: "Adgangskoden skal have mindst 6 tegn",
        .mailCharactersWrong: "Din e-mailadresse er ikke kompatibel",
        .phoneCharactersWrong: "Dit telefonnummer er ikke kompatibelt",
        .mailCantFound: "Din e-mail er forkert",
        .phoneCantFound: "Dit telefonnummer er forkert",
        .passwordCantFound: "Din adgangskode er forkert",
        .mailUsedBefore: "Denne e-mail er allerede i brug"
    ]
    
    // MARK: - DanishLanguage - AuthCompletion -
    typealias textHelperAuthCompletion = TextHelper.AuthCompletion
    let auth: [textHelperAuthCompletion.auth:String] = [
        .loginScreenTitle: "Lås op for astrologiens porte, træd ind i Aiachys verden",
        .zodiacSelectionTitle: "Tiden er kommet til at lære din fremtid at kende",
        .registerTitle: "Frigør dit stjernetegns potentiale",
        .ascendantSelectionTitle: "Opklar din indre glans",
        .attentionTitle: "OBS",
        .loginScreenDescription: "Lås op for astrologiens mysterier, dyk ned i Aiachys fortryllende verden og udforsk det fascinerende rige af stjernetegn",
        .registerDescription: "Træd ind i Aiachy for en personlig horoskopoplevelse! Lad os tilpasse dine stjernetegnsoplysninger med dine fortrolige detaljer og tage dig med på en unik rejse",
        .ascendantSelectionDescription: "Påbegynd en transformativ rejse med dit opstigende tegn og frigør den indre kraft",
        .ascendantSelectionViewGuideDescription: "Vælg fødselsdato og -tid",
        .attentionDescription: "Applikationen er stadig ikke fuldt logget ud. Det er meget normalt at støde på fejl. Hvis du støder på en og ønsker at søge efter en løsning, kan du sende den til os hurtigt fra hjælpsektionen. Appen vil fremstå for første og eneste gang i denne genre med din støtte. Husk at have det sjovt, mens du bruger appen",
        .attentionSecondDescription: "Opdatering kommer den 21. hver måned. Tjek vores Twitter"
    ]
    let authOnboarding: [textHelperAuthCompletion.onboarding:String] = [
        .heartofAstrologyTitle: "Du er i astrologiens hjerte",
        .secretOfTheStarsTitle: "Afslør stjernernes hemmeligheder",
        .yourFutureTitle: "Vil du kende din fremtid",
        .heartofAstrologyDescription: "At kende dit horoskop bedre giver dig mulighed for at planlægge bedre for fremtiden",
        .secretOfTheStarsDescription: "Opdag stjernernes hemmeligheder, afslør astrologiens finesser, alt her på ét sted",
        .yourFutureDescription: "Aiachy vil guide dig på en smuk sti og give dig små tip om din fremtid",
        .privacyPolicy: "Ved at oprette en konto accepterer du vores privatlivspolitik og brugervilkår."
    ]
    let authHelperAuth: [textHelperAuthCompletion.helperAuth:String] = [
        .clock: "Time"
    ]
    
    // MARK: - DanishLanguage - AuthCompletion -
    typealias textHelperHomeCompletion = TextHelper.HomeCompletion
    let home: [textHelperHomeCompletion.home:String] = [
        .horoscope: "Horoskop",
        .ascendant: "Opstigende",
        .compatibility: "Kompatibilitet",
        .notUsable: "Ikke tilgængelig. Du skal abonnere.",
        .notHaveAscendant: "Du skal vælge det opstigende tegn."
    ]
    let homeDate: [textHelperHomeCompletion.date:String] = [
        .yesterday: "I går",
        .today: "I dag",
        .tomorrow: "I morgen"
    ]
    let homeStatus: [textHelperHomeCompletion.status:String] = [
        .universe: "Univers",
        .enlightenment: "Oplysning",
        .touch: "Berøring",
        .love: "Kærlighed",
        .strength: "Styrke",
        .creative: "Kreativ",
        .foundation: "Grundlag"
    ]
    
    // MARK: - DanishLanguage - LoveCompletion -
    typealias textHelperLoveCompletion = TextHelper.LoveCompletion
    let love: [textHelperLoveCompletion.love:String] = [
        .attentionTitle: "Kærlighedens fremtid ligger lige lidt længere fremme, så vær tålmodig"
    ]
    
    // MARK: - DanishLanguage - MysticCompletion -
    typealias textHelperMysticCompletion = TextHelper.MysticCompletion
    let mystic: [textHelperMysticCompletion.mystic:String] = [
        .tarotTitle: "Tarot",
        .palmistryTitle: "Håndlæsning",
        .crystalGazingTitle: "Krystalkugle",
        .tarotDescription: "Ikke tilgængelig for brug",
        .palmistyrDescription: "Ikke tilgængelig for brug",
        .crystalGazingDescription: "Ikke tilgængelig for brug"
    ]
    
    // MARK: - DanishLanguage - GalaxyCompletion -
    typealias textHelperGalaxyCompletion = TextHelper.GalaxyCompletion
    let galaxy: [textHelperGalaxyCompletion.galaxy:String] = [
        .tuneTitle: "Melodi",
        .meditationTitle: "Meditation"
    ]
    let galaxyTune: [textHelperGalaxyCompletion.tune:String] = [
        .play: "Afspil",
        .stop: "Stop",
        .clickToDownload: "Klik for at downloade",
        .downloading: "Downloader"
    ]
    
    //MARK: - DanishLanguage - SettingsCompletion -
    typealias textHelperSettingsCompletion = TextHelper.SettingsCompletion
    let settings: [textHelperSettingsCompletion.settings:String] = [
        .aicyCashTitle: "AicyCash",
        .oracleTitle: "Orakel",
        .oracleHelper: "Ingen",
        .languageTitle: "Sprog",
        .themeTitle: "Tema",
        .themeLightHelper: "Lys",
        .themeDarkHelper: "Mørk"
    ]
    let settingsLanguage: [textHelperSettingsCompletion.language:String] = [
        .currentLanguage: "Nuværende sprog",
        .otherLanguage: "Andet sprog"
    ]
    let settingsOracle: [textHelperSettingsCompletion.oracle:String] = [
        .packageZodiacTitle: "Stjernetegn",
        .packageZodiacItem1: "Dit astrologiske kort vil flyde over med kosmisk visdom og hjælpe dig med bedre at forstå dit livs retning.",
        .packageZodiacItem2: "Tarotkortene vil åbne nye døre for dig og styrke din intuition",
        .packageZodiacItem3: "Nye musikalske frekvenser vil opløfte din sjæl og åbne op for nye følelsesmæssige landskaber for dig.",
        .packageOracleTitle: "Orakel",
        .packageOracleItem1: "Du vil have adgang til funktionerne i alle tilgængelige pakker, hvilket gør dig veludstyret på alle områder.",
        .packageOracleItem2: "Innovative funktioner vil være lige ved hånden, hvilket giver dig et skridt foran alle andre.",
        .packageOracleItem3: "Den venlighed, du har vist, vil efterlade et evigt aftryk på hjerter.",
        .packageOracleItem4: "Denne pakke vil være et uundværligt værktøj for at ophøje og forbedre din applikation."
    ]
    
    // MARK: - DanishLanguage - ZodiacCompletion -
    typealias textHelperZodiacCompletion = TextHelper.ZodiacCompletion
    let zodiac: [textHelperZodiacCompletion.zodiac:String] = [
        .piscesZodiacName: "Fiskene",
        .piscesZodiacDate: "20. feb - 20. mar",
        .ariesZodiacName: "Vædderen",
        .ariesZodiacDate: "21. mar - 20. apr",
        .aquariusZodiacName: "Vandmanden",
        .aquariusZodiacDate: "21. jan - 19. feb",
        .geminiZodiacName: "Tvillingerne",
        .geminiZodiacDate: "21. maj - 21. jun",
        .libraZodiacName: "Vægten",
        .libraZodiacDate: "24. sep - 23. okt",
        .virgoZodiacName: "Jomfruen",
        .virgoZodiacDate: "24. aug - 23. sep",
        .capricornZodiacName: "Stenbukken",
        .capricornZodiacDate: "22. dec - 20. jan",
        .sagittariusZodiacName: "Skytten",
        .sagittariusZodiacDate: "23. nov - 21. dec",
        .leoZodiacName: "Løven",
        .leoZodiacDate: "23. jul - 23. aug",
        .scorpioZodiacName: "Skorpionen",
        .scorpioZodiacDate: "24. okt - 22. nov",
        .taurusZodiacName: "Tyren",
        .taurusZodiacDate: "21. apr - 20. maj",
        .cancerZodiacName: "Krabben",
        .cancerZodiacDate: "22. jun - 22. jul"
    ]
}

