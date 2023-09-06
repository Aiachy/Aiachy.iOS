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
    let auth: [textHelperAuthCompletion.auth:String] = [
        .loginScreenTitle: "Otwórz Bramy Astrologii, Wejdź do Świata Aiachy",
        .zodiacSelectionTitle: "Nadszedł czas, aby poznać swoją przyszłość",
        .registerTitle: "Odkryj Swój Potencjał Zodiakalny",
        .ascendantSelectionTitle: "Oświetl Swoją Wewnętrzną Promienność",
        .attentionTitle: "UWAGA",
        .loginScreenDescription: "Odkryj Tajemnice Astrologii, Zanurz się w Czarującym Świecie Aiachy i Odkryj Fascynujący Wszechświat Cudów Zodiaku",
        .registerDescription: "Wejdź do Aiachy na spersonalizowane doświadczenie z horoskopem! Pozwól nam dostosować informacje o Twoim znaku zodiaku z Twoimi poufnymi danymi i zabrać Cię w unikalną podróż",
        .ascendantSelectionDescription: "Wyrusz w Transformującą Podróż ze Swoim Znakiem Wzlotu i Uwolnij Wewnętrzną Moc",
        .ascendantSelectionViewGuideDescription: "Wybierz datę i godzinę urodzenia",
        .attentionDescription: "Aplikacja nadal nie jest w pełni wylogowana. To bardzo normalne, że mogą wystąpić błędy. Jeśli je napotkasz i chcesz szukać rozwiązania, możesz szybko przesłać je do nas z sekcji Pomoc. Aplikacja pojawi się po raz pierwszy i jedyny w tym gatunku dzięki Twojemu wsparciu. Nie zapomnij się dobrze bawić, korzystając z aplikacji",
        .attentionSecondDescription: "Aktualizacja przychodzi 21. każdego miesiąca. Sprawdź nasz Twitter"
    ]

    let authOnboarding: [textHelperAuthCompletion.onboarding:String] = [
        .heartofAstrologyTitle: "Jesteś w sercu astrologii",
        .secretOfTheStarsTitle: "Odkryj Sekrety Gwiazd",
        .yourFutureTitle: "Czy chcesz znać swoją przyszłość",
        .heartofAstrologyDescription: "Lepsze poznanie swojego horoskopu pozwala lepiej planować przyszłość",
        .secretOfTheStarsDescription: "Odkryj Sekrety Gwiazd, Poznaj Zawiłości Astrologii, Wszystko Tutaj w Jednym Miejscu",
        .yourFutureDescription: "Aiachy poprowadzi Cię piękną ścieżką i pokaże małe wskazówki dotyczące Twojej przyszłości",
        .privacyPolicy: "Tworząc konto, zgadzasz się na naszą Politykę prywatności i Warunki korzystania."
    ]

    let authHelperAuth: [textHelperAuthCompletion.helperAuth:String] = [
        .clock: "Godzina"
    ]

    // MARK: - PolishLanguage - HomeCompletion -
    typealias textHelperHomeCompletion = TextHelper.HomeCompletion
    let home: [textHelperHomeCompletion.home:String] = [
        .horoscope: "Horoskop",
        .ascendant: "Ascendent",
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
        .packageZodiacTitle: "Zodiak",
        .packageZodiacItem1: "Twoja karta astrologiczna będzie przepełniona kosmiczną mądrością, pomagając Ci lepiej zrozumieć kierunek swojego życia.",
        .packageZodiacItem2: "Karty Tarota otworzą przed Tobą nowe drzwi i wzmocnią Twoją intuicję",
        .packageZodiacItem3: "Nowe częstotliwości muzyczne podniosą Twoją duszę i otworzą przed Tobą nowe krajobrazy emocjonalne.",
        .packageOracleTitle: "Orakulum",
        .packageOracleItem1: "Będziesz miał dostęp do funkcji wszystkich dostępnych pakietów, dzięki czemu będziesz dobrze wyposażony w każdym obszarze.",
        .packageOracleItem2: "Innowacyjne funkcje będą na wyciągnięcie ręki, dając Ci krok do przodu przed wszystkimi innymi.",
        .packageOracleItem3: "Okazana przez Ciebie życzliwość pozostawi trwały ślad w sercach.",
        .packageOracleItem4: "Ten pakiet będzie niezbędnym narzędziem do podniesienia i ulepszenia Twojej aplikacji."
    ]

    // MARK: - PolishLanguage - ZodiacCompletion -
    typealias textHelperZodiacCompletion = TextHelper.ZodiacCompletion
    let zodiac: [textHelperZodiacCompletion.zodiac:String] = [
        .piscesZodiacName: "Ryby",
        .piscesZodiacDate: "20 lut - 20 mar",
        .ariesZodiacName: "Baran",
        .ariesZodiacDate: "21 mar - 20 kwi",
        .aquariusZodiacName: "Wodnik",
        .aquariusZodiacDate: "21 sty - 19 lut",
        .geminiZodiacName: "Bliźnięta",
        .geminiZodiacDate: "21 maj - 21 cze",
        .libraZodiacName: "Waga",
        .libraZodiacDate: "24 wrz - 23 paź",
        .virgoZodiacName: "Panna",
        .virgoZodiacDate: "24 sie - 23 wrz",
        .capricornZodiacName: "Koziorożec",
        .capricornZodiacDate: "22 gru - 20 sty",
        .sagittariusZodiacName: "Strzelec",
        .sagittariusZodiacDate: "23 lis - 21 gru",
        .leoZodiacName: "Lew",
        .leoZodiacDate: "23 lip - 23 sie",
        .scorpioZodiacName: "Skorpion",
        .scorpioZodiacDate: "24 paź - 22 lis",
        .taurusZodiacName: "Byk",
        .taurusZodiacDate: "21 kwi - 20 maj",
        .cancerZodiacName: "Rak",
        .cancerZodiacDate: "22 cze - 22 lip"
    ]

}
