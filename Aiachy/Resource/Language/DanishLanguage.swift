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
    let authTitle: [textHelperAuthCompletion.title:String] = [
        .loginScreenTitle: "Afslør Magien, Rejs i Aiachy's Rige",
        .crystalSelectionTitle: "Afslør den mystiske krystal af din fødsel",
        .registerTitle: "Frigør dit stjernetegns potentiale",
        .ascendantSelectionTitle: "Opklar Din Indre Glans",
        .attentionTitle: "OPMÆRKSOMHED",
    ]
    
    let authDescription: [textHelperAuthCompletion.description:String] = [
        .loginScreenDescription: "Dekrypter Mysterierne af Æteren, Træd ind i Aiachy's Hellige Helligdom, og Vær Vidne til Celestiale Ånders Dans!",
        .crystalSelectionDescription: "Tiden er kommet til at lære din fremtid",
        .registerDescription: "Træd ind i Aiachy for en personlig horoskop oplevelse! Lad os tilpasse din zodiak information med dine fortrolige detaljer og tage dig med på en unik rejse",
        .ascendantSelectionDescription: "Begynd en Transformative Rejse med Dit Ascendant Tegn og Frigør Kraften Indeni",
        .ascendantSelectionViewGuideDescription: "Vælg fødselsdato og -tid",
        .attentionDescription: "Applikationen er stadig ikke fuldt logget ud. Det er meget normalt at støde på fejl. Hvis du støder på og vil søge efter en løsning. Du kan hurtigt sende det til os fra Hjælp-sektionen. Appen vil fremstå for første og eneste gang i denne genre med din støtte. Husk at have det sjovt, mens du bruger appen",
        .attentionSecondDescription: "Opdatering kommer den 21. hver måned. Tjek Vores Twitter"
    ]
    
    let authOnboarding: [textHelperAuthCompletion.onboarding:String] = [
        .heartofMysticTitle: "Du er i hjertet af det mystiske univers",
        .secretOfTheStarsTitle: "Afslør stjernernes hemmeligheder",
        .yourFutureTitle: "Vil du kende din fremtid",
        .heartofMysticDescription: "At låse dørene op til en mystisk verden giver dig mulighed for at planlægge din fremtid mere effektivt",
        .secretOfTheStarsDescription: "Ud over Sløret af den Dødelige Rige, Dans med de Mystiske Hvisken af Stjernerne, Afslører Gåderne af den Hellige Kosmos",
        .yourFutureDescription: "Aiachy vil guide dig på en smuk sti og give dig små tip om din fremtid",
    ]
    let authHelperAuth: [textHelperAuthCompletion.helperAuth:String] = [
        .clock: "Time",
        .privacyPolicy: "Ved at oprette en konto accepterer du vores privatlivspolitik og brugervilkår."
    ]
    
    // MARK: - DanishLanguage - AuthCompletion -
    typealias textHelperHomeCompletion = TextHelper.HomeCompletion
    let home: [textHelperHomeCompletion.home:String] = [
        .aiachy: "Aiachy",
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
    let settingsOracle: [textHelperSettingsCompletion.oracle: String] = [
        .universalWisdomTitle: "Universel visdom",
        .universalWisdomOccult1: "Når du lukker universets videnflod, vil dybere hemmeligheder flyde til dig fra de mystiske riger.",
        .universalWisdomOccult2: "Du vil vidne hemmelighederne i morgen førstehånds, og få evnen til at forstå og dechifrere fremtiden mere dybt.",
        .universalWisdomOccult3: "Med evnen til at observere chakraer mere omfattende, vil du forbedre din evne til at fortolke dine dage, dykke dybere ind i vejledningen af din indre energi.",
        .universalWisdomOccult4: "Specifikt vil du være i stand til at granske dine daglige indsigter mere dybt og opfatte dine initiativer mere klart, og dermed få muligheden for at forme din rådgivning mere detaljeret.",
        .universalWisdomOracle1: "Denne specielle pakke omfatter alle Okkult's Universelle Visdom funktioner.",
        .universalWisdomOracle2: "Denne hellige støtte, du tilbyder, vil blive husket på forhånd og vil vende tilbage til dig med positive energier fra universets hemmeligheder.",
        .universalWisdomOracle3: "Du vil opnå den første adgang til de nye funktioner i beta-testen, der leder vejen med de indkommende forbedringer.",
        .universalWisdomOracle4: "Eksklusive visualiseringer af den nærmeste fremtid vil blive præsenteret for dig gennem adgangsporten.",
        .thresholdOfTheSoulTitle: "Sjælens Tærskel",
        .thresholdOfTheSoulOccult1: "Nye musikalske frekvenser vil løfte din sjæl og åbne op for nye følelsesmæssige landskaber for dig.",
        .thresholdOfTheSoulOccult2: "Bag portene til det mystiske rige venter en dybere adgang på dig til tarotens dybder, din hænders skæbnelinjer og globusens hemmeligheder.",
        .thresholdOfTheSoulOccult3: "Du vil træde ind i den magiske verden af personliggjorte melodier og opdage fremtidens skjulte melodier.",
        .thresholdOfTheSoulOccult4: "Du vil være i stand til at dykke dybere ind i mysteriet om personliggjorte mystiske sten.",
        .thresholdOfTheSoulOracle1: "Denne specielle pakke omfatter alle Okkult's Sjælens Tærskel funktioner.",
        .thresholdOfTheSoulOracle2: "Denne hellige støtte, du tilbyder, vil blive husket på forhånd og vil vende tilbage til dig med positive energier fra universets hemmeligheder.",
        .thresholdOfTheSoulOracle3: "Du vil opnå den første adgang til de nye funktioner i beta-testen, der leder vejen med de indkommende forbedringer.",
        .thresholdOfTheSoulOracle4: "Eksklusive visualiseringer af den nærmeste fremtid vil blive præsenteret for dig gennem adgangsporten."
    ]

    
    // MARK: - DanishLanguage - ZodiacCompletion -
    typealias textHelperSpiritualCompletion = TextHelper.SpiritualCompletion
    let crystalZodiac: [textHelperSpiritualCompletion.crystal:String] = [
        .ariesCrystal: "Ametyst",
        .taurusCrystal: "Tigerøje",
        .geminiCrystal: "Rosenkvarts",
        .cancerCrystal: "Labradorit",
        .leoCrystal: "Granat",
        .virgoCrystal: "Månsten",
        .libraCrystal: "Lapis Lazuli",
        .scorpioCrystal: "Turmalin",
        .sagittariusCrystal: "Obsidian",
        .capricornCrystal: "Krystalkvarts",
        .aquariusCrystal: "Akvamarin",
        .piscesCrystal: "Perle"
    ]

    let zodiac: [textHelperSpiritualCompletion.zodiac:String] = [
        .pisces: "Fisk",
        .aries: "Vædder",
        .aquarius: "Vandmand",
        .gemini: "Tvilling",
        .libra: "Vægt",
        .virgo: "Jomfru",
        .capricorn: "Stenbuk",
        .sagittarius: "Skytte",
        .leo: "Løve",
        .scorpio: "Skorpion",
        .taurus: "Tyr",
        .cancer: "Krabbe"
    ]

    let dateZodiac: [textHelperSpiritualCompletion.dateZodiac:String] = [
        .piscesZodiacDate: "20 feb - 20 mar",
        .ariesZodiacDate: "21 mar - 20 apr",
        .aquariusZodiacDate: "21 jan - 19 feb",
        .geminiZodiacDate: "21 maj - 21 jun",
        .libraZodiacDate: "24 sep - 23 okt",
        .virgoZodiacDate: "24 aug - 23 sep",
        .capricornZodiacDate: "22 dec - 20 jan",
        .sagittariusZodiacDate: "23 nov - 21 dec",
        .leoZodiacDate: "23 jul - 23 aug",
        .scorpioZodiacDate: "24 okt - 22 nov",
        .taurusZodiacDate: "21 apr - 20 maj",
        .cancerZodiacDate: "22 jun - 22 jul"
    ]
}

