//
//  PolishLanguage.swift
//  Aiachy
//
//  Created by Mert Türedü on 23.08.2023.
//

import Foundation

struct  PolishLanguage {
    // MARK: - PolishLanguage - textHelperGeneralCompletion -
    typealias textHelperGeneralCompletion = TextHelper.GeneralCompletion
    let generalButton: [TextHelper.GeneralCompletion.button:String] = [
        .back: "Wstecz",
        .continue: "Kontynuuj",
        .login: "Zaloguj się",
        .guest: "Gość",
        .resetPassword: "Zapomniałeś hasła?",
        .register: "Rozpocznij Mistyczną Przygodę",
        .chooseLocation: "Wybierz swoją lokalizację",
        .preRegistration: "Przed-rejestracja",
        .logout: "Wyloguj się"
    ]

    let generalFlag: [textHelperGeneralCompletion.flag:String] = [
        .unitedArabEmirates: "Zjednoczone Emiraty Arabskie",
        .germany: "Niemcy",
        .denmark: "Dania",
        .france: "Francja",
        .unitedKingdom: "Wielka Brytania",
        .greece: "Grecja",
        .italy: "Włochy",
        .poland: "Polska",
        .romania: "Rumunia",
        .russianFederation: "Federacja Rosyjska",
        .türkiye: "Turcja",
        .ukraine: "Ukraina",
        .unitedStates: "Stany Zjednoczone"
    ]

    // MARK: - PolishLanguage - textHelperAlertCompletion -
    typealias textHelperAlertCompletion = TextHelper.AlertCompletion
    let alert: [textHelperAlertCompletion.alert:String] = [
        .notUserHaveConnection: "Upewnij się, że masz dostęp do Internetu",
        .notUserIsOlder: "Podaj swój wiek. Musisz mieć co najmniej 13 lat",
        .notUserHavePlace: "Nie wybrałeś miejsca. Wybierz swoje miejsce",
        .areYouSure: "Jesteś pewien?",
        .appError: "Błąd aplikacji",
        .needToRegister: "Musisz się zarejestrować",
        .notReady: "Ta strona nie jest gotowa w tej wersji aplikacji."
    ]
    let alertButton: [textHelperAlertCompletion.button:String] = [
        .tryAgain: "Spróbuj ponownie",
        .yes: "Tak",
        .no: "Nie",
        .okey: "W porządku"
    ]

    // MARK: - PolishLanguage - TextFieldCompletion -
    typealias textHelperTextFieldCompletion = TextHelper.TextFieldCompletion
    let textField: [textHelperTextFieldCompletion.textField:String] = [
        .mailPhone: "Mail/Telefon",
        .password: "Hasło",
        .againPassword: "Ponów hasło",
        .phone: "Telefon",
        .name: "Imię",
        .surname: "Nazwisko",
        .mail: "Mail",
        .place: "Miejsce"
    ]
    let textFieldError: [textHelperTextFieldCompletion.error:String] = [
        .emailWrong: "Twój e-mail jest nieprawidłowy",
        .passwordWrong: "Twoje hasło jest nieprawidłowe",
        .nameNotFill: "Proszę podać imię",
        .nameMinCharacter: "Imię musi mieć co najmniej 2 znaki",
        .surnameMinCharacter: "Nazwisko musi mieć co najmniej 2 znaki",
        .surnameNotFill: "Proszę podać nazwisko",
        .mailNotFill: "Proszę podać maila",
        .passwordNotFill: "Proszę podać hasło",
        .passwordAgainNotFill: "Proszę ponownie podać hasło",
        .passwordNotSame: "Hasła nie są takie same",
        .passwordMinCharacter: "Hasło musi mieć co najmniej 6 znaków",
        .mailCharactersWrong: "Twój adres e-mail nie jest zgodny",
        .phoneCharactersWrong: "Twój telefon nie jest zgodny",
        .mailCantFound: "Twój e-mail jest nieprawidłowy",
        .phoneCantFound: "Twój telefon jest nieprawidłowy",
        .passwordCantFound: "Twoje hasło jest nieprawidłowe",
        .mailUsedBefore: "Ten e-mail został użyty wcześniej"
    ]
    // MARK: - PolishLanguage - AuthCompletion -
    typealias textHelperAuthCompletion = TextHelper.AuthCompletion
    let authTitle: [textHelperAuthCompletion.title:String] = [
        .loginScreenTitle: "Odkryj Magię, Podróżuj po Królestwie Aiachy",
        .crystalSelectionTitle: "Odkryj tajemniczy kryształ swojego narodzin",
        .registerTitle: "Uwolnij swój potencjał zodiakalny",
        .ascendantSelectionTitle: "Rozświetl swoją wewnętrzną radiację",
        .attentionTitle: "UWAGA",
    ]
    
    let authDescription: [textHelperAuthCompletion.description:String] = [
        .loginScreenDescription: "Odszyfruj Tajemnice Eteru, Wejdź do Świętego Sanktuarium Aiachy i Obejrzyj Taniec Niebiańskich Duchów!",
        .crystalSelectionDescription: "Nadszedł czas, aby dowiedzieć się o swojej przyszłości",
        .registerDescription: "Wejdź do Aiachy, aby uzyskać spersonalizowane doświadczenie z horoskopem! Pozwól nam dostosować twoje informacje zodiakalne z twoimi poufnymi szczegółami i zabrać cię w unikalną podróż",
        .ascendantSelectionDescription: "Rozpocznij Transformacyjną Podróż ze Znakiem Twojego Wzrostu i Uwolnij Wewnętrzną Moc",
        .ascendantSelectionViewGuideDescription: "Wybierz datę i godzinę urodzenia",
        .attentionDescription: "Aplikacja nadal nie jest całkowicie wylogowana. Jest bardzo normalne, że napotkasz błędy. Jeśli napotkasz i chcesz szukać rozwiązania. Możesz szybko przesłać nam to z sekcji Pomoc. Aplikacja pojawi się po raz pierwszy i jedyny w tym gatunku dzięki twojemu wsparciu. Nie zapomnij bawić się korzystając z aplikacji",
        .attentionSecondDescription: "Aktualizacja pojawia się 21. dnia każdego miesiąca. Sprawdź nasz Twitter"
    ]

    
    let authOnboarding: [textHelperAuthCompletion.onboarding:String] = [
        .heartofMysticTitle: "Jesteś w sercu mistycznego wszechświata",
        .secretOfTheStarsTitle: "Odkryj Sekrety Gwiazd",
        .yourFutureTitle: "Czy chcesz znać swoją przyszłość",
        .heartofMysticDescription: "Otwieranie drzwi do mistycznego świata pozwala ci efektywniej planować swoją przyszłość",
        .secretOfTheStarsDescription: "Poza Welonem Śmiertelnego Królestwa, Tańcz z Mistycznymi Szeptami Gwiazd, Rozwiązując Zagadki Świętego Kosmosu",
        .yourFutureDescription: "Aiachy poprowadzi Cię piękną ścieżką i pokaże małe wskazówki dotyczące Twojej przyszłości",
    ]

    let authHelperAuth: [textHelperAuthCompletion.helperAuth:String] = [
        .clock: "Godzina",
        .privacyPolicy: "Tworząc konto, zgadzasz się na naszą Politykę prywatności i Warunki korzystania."
    ]

    // MARK: - PolishLanguage - HomeCompletion -
    typealias textHelperHomeCompletion = TextHelper.HomeCompletion
    let home: [textHelperHomeCompletion.home:String] = [
        .aiachy:"Aiachy",
        .compatibility: "Kompatybilność",
        .notUsable: "Niedostępne. Musisz się zapisać.",
        .notHaveAscendant: "Musisz wybrać znak ascendentu."
    ]

    let homeDate: [textHelperHomeCompletion.date:String] = [
        .yesterday: "Wczoraj",
        .today: "Dziś",
        .tomorrow: "Jutro",
    ]

    let homeStatus: [textHelperHomeCompletion.status:String] = [
        .universe: "Wszechświat",
        .enlightenment: "Oświecenie",
        .touch: "Dotyk",
        .love: "Miłość",
        .strength: "Siła",
        .creative: "Kreatywność",
        .foundation: "Fundament"
    ]

    // MARK: - PolishLanguage - LoveCompletion -
    typealias textHelperLoveCompletion = TextHelper.LoveCompletion
    let love: [textHelperLoveCompletion.love:String] = [
        .attentionTitle: "Przyszłość miłości leży nieco dalej, więc bądź cierpliwy"
    ]

    // MARK: - PolishLanguage - MysticCompletion -
    typealias textHelperMysticCompletion = TextHelper.MysticCompletion
    let mystic: [textHelperMysticCompletion.mystic:String] = [
        .tarotTitle: "Tarot",
        .palmistryTitle: "Chiromancja",
        .crystalGazingTitle: "Wróżenie z kryształu",
        .tarotDescription: "Niedostępne do użytku",
        .palmistyrDescription: "Niedostępne do użytku",
        .crystalGazingDescription: "Niedostępne do użytku"
    ]

    // MARK: - PolishLanguage - GalaxyCompletion -
    typealias textHelperGalaxyCompletion = TextHelper.GalaxyCompletion
    let galaxy: [textHelperGalaxyCompletion.galaxy:String] = [
        .tuneTitle: "Melodia",
        .meditationTitle: "Medytacja"
    ]
    let galaxyTune: [textHelperGalaxyCompletion.tune:String] = [
        .play: "Odtwórz",
        .stop: "Zatrzymaj",
        .clickToDownload: "Kliknij, aby pobrać",
        .downloading: "Pobieranie"
    ]

    // MARK: - PolishLanguage - SettingsCompletion -
    typealias textHelperSettingsCompletion = TextHelper.SettingsCompletion
    let settings: [textHelperSettingsCompletion.settings:String] = [
        .aicyCashTitle: "AicyCash",
        .oracleTitle: "Orakulum",
        .oracleHelper: "Brak",
        .languageTitle: "Język",
        .themeTitle: "Motyw",
        .themeLightHelper: "Jasny",
        .themeDarkHelper: "Ciemny",
    ]
    let settingsLanguage: [textHelperSettingsCompletion.language:String] = [
        .currentLanguage: "Aktualny język",
        .otherLanguage: "Inny język"
    ]

    let settingsOracle: [textHelperSettingsCompletion.oracle: String] = [
        .universalWisdomTitle: "Uniwersalna mądrość",
        .universalWisdomOccult1: "Zamykając rzekę wiedzy wszechświata, głębsze sekrety będą płynąć do ciebie z tajemniczych królestw.",
        .universalWisdomOccult2: "Będziesz świadkiem tajemnic jutra z pierwszej ręki, zdobywając zdolność głębszego rozumienia i odczytywania przyszłości.",
        .universalWisdomOccult3: "Z zdolnością do bardziej szczegółowej obserwacji czakr wzmocnisz swoją zdolność interpretacji swoich dni, zagłębiając się głębiej w przewodnictwo twojej wewnętrznej energii.",
        .universalWisdomOccult4: "Konkretnie będziesz mógł dokładniej analizować swoje codzienne spostrzeżenia i postrzegać swoje inicjatywy bardziej wyraźnie, uzyskując tym samym możliwość kształtowania swoich rad bardziej szczegółowo.",
        .universalWisdomOracle1: "Ten specjalny pakiet obejmuje wszystkie funkcje Uniwersalnej Mądrości Okultystycznej.",
        .universalWisdomOracle2: "Ta święta wsparcie, którą oferujesz, zostanie zapamiętana z wyprzedzeniem i wróci do ciebie z pozytywnymi energiami z tajemnic wszechświata.",
        .universalWisdomOracle3: "Uzyskasz pierwszy dostęp do nowych funkcji w teście beta, prowadząc drogę z nadchodzącymi ulepszeniami.",
        .universalWisdomOracle4: "Ekskluzywne wizualizacje najbliższej przyszłości zostaną ci przedstawione przez bramę dostępu.",
        .thresholdOfTheSoulTitle: "Próg duszy",
        .thresholdOfTheSoulOccult1: "Nowe muzyczne częstotliwości podniosą twoją duszę i otworzą przed tobą nowe emocjonalne krajobrazy.",
        .thresholdOfTheSoulOccult2: "Za bramami tajemniczego królestwa czeka na ciebie głębszy dostęp do głębin tarota, fatalnych linii twojej dłoni i tajemnic globu.",
        .thresholdOfTheSoulOccult3: "Wejdziesz w magiczny świat spersonalizowanych melodii i odkryjesz ukryte melodie przyszłości.",
        .thresholdOfTheSoulOccult4: "Będziesz mógł zagłębić się głębiej w tajemnicę spersonalizowanych tajemniczych kamieni.",
        .thresholdOfTheSoulOracle1: "Ten specjalny pakiet obejmuje wszystkie funkcje Progu Duszy Okultystycznej.",
        .thresholdOfTheSoulOracle2: "Ta święta wsparcie, którą oferujesz, zostanie zapamiętana z wyprzedzeniem i wróci do ciebie z pozytywnymi energiami z tajemnic wszechświata.",
        .thresholdOfTheSoulOracle3: "Uzyskasz pierwszy dostęp do nowych funkcji w teście beta, prowadząc drogę z nadchodzącymi ulepszeniami.",
        .thresholdOfTheSoulOracle4: "Ekskluzywne wizualizacje najbliższej przyszłości zostaną ci przedstawione przez bramę dostępu."
    ]

    // MARK: - PolishLanguage - ZodiacCompletion -
    typealias textHelperSpiritualCompletion = TextHelper.SpiritualCompletion
    let crystalZodiac: [textHelperSpiritualCompletion.crystal:String] = [
        .ariesCrystal: "Ametyst",
        .taurusCrystal: "Oko tygrysa",
        .geminiCrystal: "Różowy kwarc",
        .cancerCrystal: "Labradoryt",
        .leoCrystal: "Granat",
        .virgoCrystal: "Kamień księżycowy",
        .libraCrystal: "Lapis lazuli",
        .scorpioCrystal: "Turmalin",
        .sagittariusCrystal: "Obsydian",
        .capricornCrystal: "Krzemień górski",
        .aquariusCrystal: "Akwamaryn",
        .piscesCrystal: "Perła"
    ]
    
    let zodiac: [textHelperSpiritualCompletion.zodiac:String] = [
        .pisces: "Ryby",
        .aries: "Baran",
        .aquarius: "Wodnik",
        .gemini: "Bliźnięta",
        .libra: "Waga",
        .virgo: "Panna",
        .capricorn: "Koziorożec",
        .sagittarius: "Strzelec",
        .leo: "Lew",
        .scorpio: "Skorpion",
        .taurus: "Byk",
        .cancer: "Rak"
    ]


    let dateZodiac: [textHelperSpiritualCompletion.dateZodiac:String] = [
        .piscesZodiacDate: "20 lut - 20 mar",
        .ariesZodiacDate: "21 mar - 20 kwi",
        .aquariusZodiacDate: "21 sty - 19 lut",
        .geminiZodiacDate: "21 maj - 21 cze",
        .libraZodiacDate: "24 wrz - 23 paź",
        .virgoZodiacDate: "24 sie - 23 wrz",
        .capricornZodiacDate: "22 gru - 20 sty",
        .sagittariusZodiacDate: "23 lis - 21 gru",
        .leoZodiacDate: "23 lip - 23 sie",
        .scorpioZodiacDate: "24 paź - 22 lis",
        .taurusZodiacDate: "21 kwi - 20 maj",
        .cancerZodiacDate: "22 cze - 22 lip"
    ]

}
