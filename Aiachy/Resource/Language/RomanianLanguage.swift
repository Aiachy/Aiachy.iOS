//
//  RomanianLanguage.swift
//  Aiachy
//
//  Created by Mert Türedü on 23.08.2023.
//

import Foundation

struct RomanianLanguage {
    //MARK: - RomanianLanguage - textHelperGeneralCompletion -
    typealias textHelperGeneralCompletion = TextHelper.GeneralCompletion
    let generalButton: [TextHelper.GeneralCompletion.button:String] = [
        .back: "Înapoi",
        .continue: "Continuă",
        .login: "Autentificare",
        .guest: "Oaspete",
        .resetPassword: "Ai uitat parola?",
        .register: "Porniți într-o aventură mistică",
        .chooseLocation: "Alegeți locația",
        .preRegistration: "Pre-înregistrare",
        .logout: "Deconectare"
    ]

    let generalFlag: [textHelperGeneralCompletion.flag:String] = [
        .unitedArabEmirates: "Emiratele Arabe Unite",
        .germany: "Germania",
        .denmark: "Danemarca",
        .france: "Franța",
        .unitedKingdom: "Regatul Unit",
        .greece: "Grecia",
        .italy: "Italia",
        .poland: "Polonia",
        .romania: "România",
        .russianFederation: "Federația Rusă",
        .türkiye: "Turcia",
        .ukraine: "Ucraina",
        .unitedStates: "Statele Unite ale Americii"
    ]

    //MARK: - RomaniaLanguage - textHelperAlertCompletion -
    typealias textHelperAlertCompletion = TextHelper.AlertCompletion
    let alert: [textHelperAlertCompletion.alert:String] = [
        .notUserHaveConnection: "Asigurați-vă că sunteți conectat la internet",
        .notUserIsOlder: "Vă rugăm să introduceți vârsta. Trebuie să aveți peste 13 ani",
        .notUserHavePlace: "Nu ați selectat locația. Vă rugăm să selectați locația",
        .areYouSure: "Ești sigur?",
        .appError: "Eroare de aplicație",
        .needToRegister: "Trebuie să vă înregistrați",
        .notReady: "Această pagină nu este pregătită în această versiune a aplicației."
    ]

    let alertButton: [textHelperAlertCompletion.button:String] = [
        .tryAgain: "Încearcă din nou",
        .yes: "Da",
        .no: "Nu",
        .okey: "Ok"
    ]

    //MARK: - RomaniaLanguage - TextFieldCompletion -
    typealias textHelperTextFieldCompletion = TextHelper.TextFieldCompletion
    let textField: [textHelperTextFieldCompletion.textField:String] = [
        .mailPhone: "E-mail/Telefon",
        .password: "Parolă",
        .againPassword: "Reintroduceți parola",
        .phone: "Telefon",
        .name: "Nume",
        .surname: "Prenume",
        .mail: "E-mail",
        .place: "Locație"
    ]

    let textFieldError: [textHelperTextFieldCompletion.error:String] = [
        .emailWrong: "E-mailul tău este incorect",
        .passwordWrong: "Parola ta este incorectă",
        .nameNotFill: "Vă rugăm să completați numele",
        .nameMinCharacter: "Numele trebuie să aibă minim 2 caractere",
        .surnameMinCharacter: "Prenumele trebuie să aibă minim 2 caractere",
        .surnameNotFill: "Vă rugăm să completați prenumele",
        .mailNotFill: "Vă rugăm să completați e-mailul",
        .passwordNotFill: "Vă rugăm să completați parola",
        .passwordAgainNotFill: "Vă rugăm să reintroduceți parola",
        .passwordNotSame: "Parolele nu se potrivesc",
        .passwordMinCharacter: "Parola trebuie să aibă minim 6 caractere",
        .mailCharactersWrong: "Adresa ta de e-mail nu este compatibilă",
        .phoneCharactersWrong: "Numărul tău de telefon nu este compatibil",
        .mailCantFound: "E-mailul tău este incorect",
        .phoneCantFound: "Numărul tău de telefon este incorect",
        .passwordCantFound: "Parola ta este incorectă",
        .mailUsedBefore: "Acest e-mail a fost folosit anterior"
    ]
    // MARK: - RomaniaLanguage - AuthCompletion -
    typealias textHelperAuthCompletion = TextHelper.AuthCompletion
    let auth: [textHelperAuthCompletion.auth:String] = [
        .loginScreenTitle: "Deblochează Porțile Astrologiei, Intră în Lumea Aiachy",
        .zodiacSelectionTitle: "A venit timpul să îți afli viitorul",
        .registerTitle: "Dezlănțuie-ți Potențialul Zodiacal",
        .ascendantSelectionTitle: "Iluminează-ți Radiația Interioară",
        .attentionTitle: "ATENȚIE",
        .loginScreenDescription: "Deblochează Misterele Astrologiei, Intră în Lumea Fermecătoare a Aiachy și Explorează Fascinantul Regat al Minunilor Zodiacului",
        .registerDescription: "Paseste în Aiachy pentru o experiență personalizată a horoscopului! Vom personaliza informațiile tale zodiacale cu detaliile tale confidențiale și te vom lua într-o călătorie unică",
        .ascendantSelectionDescription: "Porniți într-o călătorie transformatoare cu Semnul tău Ascendent. Dezlănțuie Puterea din Interior",
        .ascendantSelectionViewGuideDescription: "Selectează data și ora nașterii",
        .attentionDescription: "Aplicația încă nu este complet deconectată. Este foarte normal să întâlnești bug-uri. Dacă întâlnești și vrei să cauți o soluție, ne-o poți trimite rapid din secțiunea Ajutor. Aplicația va apărea pentru prima și singura dată în acest gen cu sprijinul tău. Nu uita să te distrezi în timp ce folosești aplicația",
        .attentionSecondDescription: "Actualizarea vine în fiecare lună pe data de 21. Verificați Twitterul nostru"
    ]

    let authOnboarding: [textHelperAuthCompletion.onboarding:String] = [
        .heartofAstrologyTitle: "Ești în inima astrologiei",
        .secretOfTheStarsTitle: "Dezvăluie secretele stelelor",
        .yourFutureTitle: "Vrei să îți cunoști viitorul",
        .heartofAstrologyDescription: "Cunoașterea mai bună a horoscopului tău îți permite să îți faci planuri mai bune pentru viitor",
        .secretOfTheStarsDescription: "Descoperă secretele stelelor, dezvăluind complexitățile astrologiei, toate aici, într-un singur loc",
        .yourFutureDescription: "Aiachy te va ghida pe un drum frumos și îți va arăta mici sfaturi despre viitorul tău",
        .privacyPolicy: "Creând un cont, sunteți de acord cu Politica noastră de confidențialitate și Termenii de utilizare."
    ]
    let authHelperAuth: [textHelperAuthCompletion.helperAuth:String] = [
        .clock: "Oră"
    ]

    // RomaniaLanguage - textHelperHomeCompletion -
    typealias textHelperHomeCompletion = TextHelper.HomeCompletion
    let home: [textHelperHomeCompletion.home:String] = [
        .horoscope: "Horoscop",
        .ascendant: "Ascendent",
        .compatibility: "Compatibilitate",
        .notUsable: "Nu este disponibil. Trebuie să vă abonați.",
        .notHaveAscendant: "Trebuie să alegeți semnul ascendent."
    ]
    let homeDate: [textHelperHomeCompletion.date:String] = [
        .yesterday: "Ieri",
        .today: "Astăzi",
        .tomorrow: "Mâine"
    ]
    let homeStatus: [textHelperHomeCompletion.status:String] = [
        .universe: "Univers",
        .enlightenment: "Iluminare",
        .touch: "Atingere",
        .love: "Dragoste",
        .strength: "Forță",
        .creative: "Creativ",
        .foundation: "Fundament"
    ]

    // RomaniaLanguage - textHelperLoveCompletion -
    typealias textHelperLoveCompletion = TextHelper.LoveCompletion
    let love: [textHelperLoveCompletion.love:String] = [
        .attentionTitle: "Viitorul dragostei este doar puțin mai departe, așa că ai răbdare"
    ]

    // RomaniaLanguage - textHelperMysticCompletion -
    typealias textHelperMysticCompletion = TextHelper.MysticCompletion
    let mystic: [textHelperMysticCompletion.mystic:String] = [
        .tarotTitle: "Tarot",
        .palmistryTitle: "Chiromanție",
        .crystalGazingTitle: "Cristalomantie",
        .tarotDescription: "Nu este disponibil pentru utilizare",
        .palmistyrDescription: "Nu este disponibil pentru utilizare",
        .crystalGazingDescription: "Nu este disponibil pentru utilizare"
    ]

    // RomaniaLanguage - textHelperGalaxyCompletion -
    typealias textHelperGalaxyCompletion = TextHelper.GalaxyCompletion
    let galaxy: [textHelperGalaxyCompletion.galaxy:String] = [
        .tuneTitle: "Melodie",
        .meditationTitle: "Meditație"
    ]
    let galaxyTune: [textHelperGalaxyCompletion.tune:String] = [
        .play: "Redă",
        .stop: "Oprește",
        .clickToDownload: "Apasă pentru a descărca",
        .downloading: "Se descarcă"
    ]
    // RomaniaLanguage - textHelperSettingsCompletion -
    typealias textHelperSettingsCompletion = TextHelper.SettingsCompletion
    let settings: [textHelperSettingsCompletion.settings:String] = [
        .aicyCashTitle: "AicyCash",
        .oracleTitle: "Oracol",
        .oracleHelper: "Niciunul",
        .languageTitle: "Limbă",
        .themeTitle: "Temă",
        .themeLightHelper: "Luminos",
        .themeDarkHelper: "Întunecat",
    ]
    let settingsLanguage: [textHelperSettingsCompletion.language:String] = [
        .currentLanguage: "Limba curentă",
        .otherLanguage: "Altă limbă"
    ]
    let settingsOracle: [textHelperSettingsCompletion.oracle:String] = [
        .packageZodiacTitle: "Zodiac",
        .packageZodiacItem1: "Harta ta astrologică va fi plină de înțelepciune cosmică, ajutându-te să înțelegi mai bine direcția vieții tale.",
        .packageZodiacItem2: "Cărțile Tarot vor deschide uși noi pentru tine și vor întări intuiția ta",
        .packageZodiacItem3: "Frecvențe muzicale noi îți vor ridica sufletul și vor deschide noi peisaje emoționale pentru tine.",
        .packageOracleTitle: "Oracol",
        .packageOracleItem1: "Vei avea acces la caracteristicile tuturor pachetelor disponibile, făcându-te bine echipat în fiecare domeniu.",
        .packageOracleItem2: "Funcții inovatoare vor fi la îndemâna ta, oferindu-ți un pas înainte față de toată lumea.",
        .packageOracleItem3: "Amabilitatea pe care ai arătat-o va lăsa o amprentă eternă pe inimi.",
        .packageOracleItem4: "Acest pachet va fi un instrument indispensabil pentru a îmbunătăți și îmbogăți aplicația ta."
    ]

    // RomaniaLanguage - textHelperZodiacCompletion -
    typealias textHelperZodiacCompletion = TextHelper.ZodiacCompletion
    let zodiac: [textHelperZodiacCompletion.zodiac:String] = [
        .piscesZodiacName: "Pești",
        .piscesZodiacDate: "20 feb - 20 mar",
        .ariesZodiacName: "Berbec",
        .ariesZodiacDate: "21 mar - 20 apr",
        .aquariusZodiacName: "Vărsător",
        .aquariusZodiacDate: "21 ian - 19 feb",
        .geminiZodiacName: "Gemeni",
        .geminiZodiacDate: "21 mai - 21 iun",
        .libraZodiacName: "Balanță",
        .libraZodiacDate: "24 sept - 23 oct",
        .virgoZodiacName: "Fecioară",
        .virgoZodiacDate: "24 aug - 23 sept",
        .capricornZodiacName: "Capricorn",
        .capricornZodiacDate: "22 dec - 20 ian",
        .sagittariusZodiacName: "Săgetător",
        .sagittariusZodiacDate: "23 nov - 21 dec",
        .leoZodiacName: "Leu",
        .leoZodiacDate: "23 iul - 23 aug",
        .scorpioZodiacName: "Scorpion",
        .scorpioZodiacDate: "24 oct - 22 nov",
        .taurusZodiacName: "Taur",
        .taurusZodiacDate: "21 apr - 20 mai",
        .cancerZodiacName: "Rac",
        .cancerZodiacDate: "22 iun - 22 iul"
    ]
}
