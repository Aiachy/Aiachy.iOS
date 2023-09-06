//
//  ItalianLanguage.swift
//  Aiachy
//
//  Created by Mert Türedü on 23.08.2023.
//

import Foundation

struct ItalianLanguage {
    //MARK: - ItalianLanguage - textHelperGeneralCompletion -
    typealias textHelperGeneralCompletion = TextHelper.GeneralCompletion
    let generalButton: [textHelperGeneralCompletion.button:String] = [
        .back: "Indietro",
        .continue: "Continua",
        .login: "Accedi",
        .guest: "Ospite",
        .resetPassword: "Hai dimenticato la password?",
        .register: "Imbarcati in un'avventura mistica",
        .chooseLocation: "Scegli la tua posizione",
        .preRegistration: "Pre-registrazione",
        .logout: "Disconnetti"
    ]
    let generalFlag: [textHelperGeneralCompletion.flag:String] = [
        .unitedArabEmirates: "Emirati Arabi Uniti",
        .germany: "Germania",
        .denmark: "Danimarca",
        .france: "Francia",
        .unitedKingdom: "Regno Unito",
        .greece: "Grecia",
        .italy: "Italia",
        .poland: "Polonia",
        .romania: "Romania",
        .russianFederation: "Federazione Russa",
        .türkiye: "Turchia",
        .ukraine: "Ucraina",
        .unitedStates: "Stati Uniti"
    ]
    
    //MARK: - ItalianLanguage - textHelperAlertCompletion -
    typealias textHelperAlertCompletion = TextHelper.AlertCompletion
    let alert: [textHelperAlertCompletion.alert:String] = [
        .notUserHaveConnection: "Assicurati di essere connesso a Internet",
        .notUserIsOlder: "Inserisci la tua età. Devi avere più di 13 anni",
        .notUserHavePlace: "Non hai selezionato il tuo posto. Seleziona il tuo posto",
        .areYouSure: "Sei sicuro?",
        .appError: "Errore dell'app",
        .needToRegister: "È necessario registrarsi",
        .notReady: "Questa pagina non è disponibile in questa versione dell'applicazione."
    ]
    let alertButton: [textHelperAlertCompletion.button:String] = [
        .tryAgain: "Riprova",
        .yes: "Sì",
        .no: "No",
        .okey: "Va bene"
    ]
    
    //MARK: - ItalianLanguage - TextFieldCompletion -
    typealias textHelperTextFieldCompletion = TextHelper.TextFieldCompletion
    let textField: [textHelperTextFieldCompletion.textField:String] = [
        .mailPhone: "Mail/Telefono",
        .password: "Password",
        .againPassword: "Ripeti la password",
        .phone: "Telefono",
        .name: "Nome",
        .surname: "Cognome",
        .mail: "Mail",
        .place: "Luogo"
    ]
    let textFieldError: [textHelperTextFieldCompletion.error:String] = [
        .emailWrong: "La tua email è errata",
        .passwordWrong: "La tua password è errata",
        .nameNotFill: "Per favore, riempi il tuo nome",
        .nameMinCharacter: "Il nome deve avere un minimo di 2 caratteri",
        .surnameMinCharacter: "Il cognome deve avere un minimo di 2 caratteri",
        .surnameNotFill: "Per favore, riempi il tuo cognome",
        .mailNotFill: "Per favore, riempi la tua mail",
        .passwordNotFill: "Per favore, riempi la tua password",
        .passwordAgainNotFill: "Per favore, riempi nuovamente la tua password",
        .passwordNotSame: "Le password non coincidono",
        .passwordMinCharacter: "La password deve avere un minimo di 6 caratteri",
        .mailCharactersWrong: "Il tuo indirizzo e-mail non è compatibile",
        .phoneCharactersWrong: "Il tuo telefono non è compatibile",
        .mailCantFound: "La tua mail è errata",
        .phoneCantFound: "Il tuo telefono è errato",
        .passwordCantFound: "La tua password è errata",
        .mailUsedBefore: "Questa email è stata utilizzata in precedenza"
    ]
    
    // MARK: - ItalianLanguage - AuthCompletion -
    typealias textHelperAuthCompletion = TextHelper.AuthCompletion
    let auth: [textHelperAuthCompletion.auth:String] = [
        .loginScreenTitle: "Sblocca le porte dell'astrologia, entra nel mondo di Aiachy",
        .zodiacSelectionTitle: "Il momento è giunto per conoscere il tuo futuro",
        .registerTitle: "Svela il tuo potenziale zodiacale",
        .ascendantSelectionTitle: "Illumina la tua luce interiore",
        .attentionTitle: "ATTENZIONE",
        .loginScreenDescription: "Sblocca i misteri dell'astrologia, immergiti nel mondo incantevole di Aiachy e esplora il fascino del regno dello Zodiaco",
        .registerDescription: "Entra in Aiachy per un'esperienza oroscopo personalizzata! Personalizzeremo le tue informazioni zodiacali con i tuoi dettagli confidenziali e ti porteremo in un viaggio unico",
        .ascendantSelectionDescription: "Intraprendi un viaggio trasformativo con il tuo segno ascendente. Svela il potere interiore",
        .ascendantSelectionViewGuideDescription: "Seleziona data e ora di nascita",
        .attentionDescription: "L'applicazione non è ancora completamente disconnessa. È molto normale incontrare bug. Se ne incontri uno e vuoi cercare una soluzione, puoi inviarcelo rapidamente dalla sezione Aiuto. L'app apparirà per la prima e unica volta in questo genere con il tuo supporto. Non dimenticare di divertirti mentre usi l'app",
        .attentionSecondDescription: "L'aggiornamento arriva il 21 di ogni mese. Controlla il nostro Twitter"
    ]
    let authOnboarding: [textHelperAuthCompletion.onboarding:String] = [
        .heartofAstrologyTitle: "Sei nel cuore dell'astrologia",
        .secretOfTheStarsTitle: "Svela i segreti delle stelle",
        .yourFutureTitle: "Vuoi conoscere il tuo futuro",
        .heartofAstrologyDescription: "Conoscere meglio il tuo oroscopo ti permette di fare piani migliori per il futuro",
        .secretOfTheStarsDescription: "Scopri i segreti delle stelle, svelando le complessità dell'astrologia, tutto qui in un unico posto",
        .yourFutureDescription: "Aiachy ti guiderà su un bellissimo percorso e ti mostrerà piccoli suggerimenti sul tuo futuro",
        .privacyPolicy: "Creando un account, accetti la nostra politica sulla privacy e i termini di utilizzo."
    ]
    let authHelperAuth: [textHelperAuthCompletion.helperAuth:String] = [
        .clock: "Ora"
    ]
    
    // MARK: - ItalianLanguage - HomeCompletion -
    typealias textHelperHomeCompletion = TextHelper.HomeCompletion
    let home: [textHelperHomeCompletion.home:String] = [
        .horoscope: "Oroscopo",
        .ascendant: "Ascendente",
        .compatibility: "Compatibilità",
        .notUsable: "Non disponibile. Devi iscriverti.",
        .notHaveAscendant: "Devi scegliere il segno ascendente."
    ]
    let homeDate: [textHelperHomeCompletion.date:String] = [
        .yesterday: "Ieri",
        .today: "Oggi",
        .tomorrow: "Domani",
    ]
    let homeStatus: [textHelperHomeCompletion.status:String] = [
        .universe: "Universo",
        .enlightenment: "Illuminazione",
        .touch: "Tocco",
        .love: "Amore",
        .strength: "Forza",
        .creative: "Creativo",
        .foundation: "Fondazione"
    ]
    
    // MARK: - ItalianLanguage - LoveCompletion -
    typealias textHelperLoveCompletion = TextHelper.LoveCompletion
    let love: [textHelperLoveCompletion.love:String] = [
        .attentionTitle: "Il futuro dell'amore è un po' più avanti, quindi sii paziente"
    ]
    
    // MARK: - ItalianLanguage - MysticCompletion -
    typealias textHelperMysticCompletion = TextHelper.MysticCompletion
    let mystic: [textHelperMysticCompletion.mystic:String] = [
        .tarotTitle: "Tarocchi",
        .palmistryTitle: "Chiromanzia",
        .crystalGazingTitle: "Cristallomanzia",
        .tarotDescription: "Non disponibile per l'uso",
        .palmistyrDescription: "Non disponibile per l'uso",
        .crystalGazingDescription: "Non disponibile per l'uso"
    ]
    
    // MARK: - ItalianLanguage - GalaxyCompletion -
    typealias textHelperGalaxyCompletion = TextHelper.GalaxyCompletion
    let galaxy: [textHelperGalaxyCompletion.galaxy:String] = [
        .tuneTitle: "Melodia",
        .meditationTitle: "Meditazione"
    ]
    let galaxyTune: [textHelperGalaxyCompletion.tune:String] = [
        .play: "Riproduci",
        .stop: "Ferma",
        .clickToDownload: "Clicca per scaricare",
        .downloading: "Scaricamento in corso"
    ]
    
    //MARK: - ItalianLanguage - SettingsCompletion -
    typealias textHelperSettingsCompletion = TextHelper.SettingsCompletion
    let settings: [textHelperSettingsCompletion.settings:String] = [
        .aicyCashTitle: "AicyCash",
        .oracleTitle: "Oracolo",
        .oracleHelper: "Nessuno",
        .languageTitle: "Lingua",
        .themeTitle: "Tema",
        .themeLightHelper: "Chiaro",
        .themeDarkHelper: "Scuro",
    ]
    let settingsLanguage: [textHelperSettingsCompletion.language:String] = [
        .currentLanguage: "Lingua corrente",
        .otherLanguage: "Altra lingua"
    ]
    let settingsOracle: [textHelperSettingsCompletion.oracle:String] = [
        .packageZodiacTitle: "Zodiaco",
        .packageZodiacItem1: "Il tuo oroscopo sarà colmo di saggezza cosmica, aiutandoti a capire meglio la direzione della tua vita.",
        .packageZodiacItem2: "Le carte dei Tarocchi apriranno nuove porte per te e rafforzeranno la tua intuizione",
        .packageZodiacItem3: "Nuove frequenze musicali eleveranno la tua anima e apriranno nuovi paesaggi emotivi per te.",
        .packageOracleTitle: "Oracolo",
        .packageOracleItem1: "Avrai accesso alle funzionalità di tutti i pacchetti disponibili, rendendoti ben attrezzato in ogni area.",
        .packageOracleItem2: "Le funzionalità innovative saranno a portata di mano, dandoti un passo avanti su tutti gli altri.",
        .packageOracleItem3: "La gentilezza che hai mostrato lascerà un'impronta indelebile sui cuori.",
        .packageOracleItem4: "Questo pacchetto sarà uno strumento indispensabile per elevare e migliorare la tua applicazione."
    ]
    
    // MARK: - ItalianLanguage - ZodiacCompletion -
    typealias textHelperZodiacCompletion = TextHelper.ZodiacCompletion
    let zodiac: [textHelperZodiacCompletion.zodiac:String] = [
        .piscesZodiacName: "Pesci",
        .piscesZodiacDate: "20 feb - 20 mar",
        .ariesZodiacName: "Ariete",
        .ariesZodiacDate: "21 mar - 20 apr",
        .aquariusZodiacName: "Acquario",
        .aquariusZodiacDate: "21 gen - 19 feb",
        .geminiZodiacName: "Gemelli",
        .geminiZodiacDate: "21 mag - 21 giu",
        .libraZodiacName: "Bilancia",
        .libraZodiacDate: "24 set - 23 ott",
        .virgoZodiacName: "Vergine",
        .virgoZodiacDate: "24 ago - 23 set",
        .capricornZodiacName: "Capricorno",
        .capricornZodiacDate: "22 dic - 20 gen",
        .sagittariusZodiacName: "Sagittario",
        .sagittariusZodiacDate: "23 nov - 21 dic",
        .leoZodiacName: "Leone",
        .leoZodiacDate: "23 lug - 23 ago",
        .scorpioZodiacName: "Scorpione",
        .scorpioZodiacDate: "24 ott - 22 nov",
        .taurusZodiacName: "Toro",
        .taurusZodiacDate: "21 apr - 20 mag",
        .cancerZodiacName: "Cancro",
        .cancerZodiacDate: "22 giu - 22 lug"
    ]
}

