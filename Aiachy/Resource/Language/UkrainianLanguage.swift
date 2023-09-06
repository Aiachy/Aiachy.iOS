//
//  UkrainianLanguage.swift
//  Aiachy
//
//  Created by Mert Türedü on 23.08.2023.
//

import Foundation

struct UkrainianLanguage {
    
    // MARK: - UkrainianLanguage - textHelperGeneralCompletion -
    typealias textHelperGeneralCompletion = TextHelper.GeneralCompletion
    let generalButton: [textHelperGeneralCompletion.button:String] = [
        .back: "Назад",
        .continue: "Продовжити",
        .login: "Увійти",
        .guest: "Гість",
        .resetPassword: "Забули пароль?",
        .register: "Почніть містичну пригоду",
        .chooseLocation: "Оберіть ваше місцезнаходження",
        .preRegistration: "Попередня реєстрація",
        .logout: "Вийти"
    ]
    
    let generalFlag: [textHelperGeneralCompletion.flag:String] = [
        .unitedArabEmirates: "Об'єднані Арабські Емірати",
        .germany: "Німеччина",
        .denmark: "Данія",
        .france: "Франція",
        .unitedKingdom: "Сполучене Королівство",
        .greece: "Греція",
        .italy: "Італія",
        .poland: "Польща",
        .romania: "Румунія",
        .russianFederation: "Російська Федерація",
        .türkiye: "Туреччина",
        .ukraine: "Україна",
        .unitedStates: "Сполучені Штати"
    ]
    
    // MARK: - UkrainianLanguage - textHelperAlertCompletion -
    typealias textHelperAlertCompletion = TextHelper.AlertCompletion
    let alert: [textHelperAlertCompletion.alert:String] = [
        .notUserHaveConnection: "Будь ласка, переконайтеся, що ви підключені до Інтернету",
        .notUserIsOlder: "Будь ласка, введіть ваш вік. Вам повинно бути більше 13 років",
        .notUserHavePlace: "Ви не обрали ваше місце. Будь ласка, виберіть ваше місце",
        .areYouSure: "Ви впевнені?",
        .appError: "Помилка додатку",
        .needToRegister: "Вам потрібно зареєструватися",
        .notReady: "Ця сторінка недоступна в цій версії програми."
    ]
    let alertButton: [textHelperAlertCompletion.button:String] = [
        .tryAgain: "Спробувати знову",
        .yes: "Так",
        .no: "Ні",
        .okey: "Добре"
    ]
    
    // MARK: - UkrainianLanguage - TextFieldCompletion -
    typealias textHelperTextFieldCompletion = TextHelper.TextFieldCompletion
    let textField: [textHelperTextFieldCompletion.textField:String] = [
        .mailPhone: "Пошта/Телефон",
        .password: "Пароль",
        .againPassword: "Пароль знову",
        .phone: "Телефон",
        .name: "Ім'я",
        .surname: "Прізвище",
        .mail: "Пошта",
        .place: "Місце"
    ]
    let textFieldError: [textHelperTextFieldCompletion.error:String] = [
        .emailWrong: "Ваша електронна адреса неправильна",
        .passwordWrong: "Ваш пароль неправильний",
        .nameNotFill: "Будь ласка, заповніть ваше ім'я",
        .nameMinCharacter: "Ім'я повинно мати мінімум 2 символи",
        .surnameMinCharacter: "Прізвище повинно мати мінімум 2 символи",
        .surnameNotFill: "Будь ласка, заповніть ваше прізвище",
        .mailNotFill: "Будь ласка, заповніть вашу пошту",
        .passwordNotFill: "Будь ласка, заповніть ваш пароль",
        .passwordAgainNotFill: "Будь ласка, заповніть ваш пароль знову",
        .passwordNotSame: "Паролі не співпадають",
        .passwordMinCharacter: "Пароль повинен мати мінімум 6 символів",
        .mailCharactersWrong: "Ваша електронна адреса несумісна",
        .phoneCharactersWrong: "Ваш телефон несумісний",
        .mailCantFound: "Ваша пошта неправильна",
        .phoneCantFound: "Ваш телефон неправильний",
        .passwordCantFound: "Ваш пароль неправильний",
        .mailUsedBefore: "Цю електронну адресу вже використовували"
    ]
    
    // MARK: - UkrainianLanguage - AuthCompletion -
    typealias textHelperAuthCompletion = TextHelper.AuthCompletion
    let auth: [textHelperAuthCompletion.auth:String] = [
        .loginScreenTitle: "Відкрийте для себе світ астрології, увійдіть у світ Aiachy",
        .zodiacSelectionTitle: "Час дізнатися своє майбутнє",
        .registerTitle: "Розкрийте свій зодіаціальний потенціал",
        .ascendantSelectionTitle: "Освітіть свою внутрішню сутність",
        .attentionTitle: "УВАГА",
        .loginScreenDescription: "Відкрийте для себе таємниці астрології, пориньте в чарівний світ Aiachy і дослідіть захоплюючий світ зодіакальних чудес",
        .registerDescription: "Зареєструйтеся в Aiachy для персонального гороскопу! Дозвольте нам налаштувати вашу зодіаціальну інформацію за допомогою вашої конфіденційної інформації та взяти вас в унікальну подорож",
        .ascendantSelectionDescription: "Розпочніть перетворювальну подорож з вашим восходячим знаком. Розкрийте внутрішню силу",
        .ascendantSelectionViewGuideDescription: "Виберіть дату та час народження",
        .attentionDescription: "Додаток ще не повністю вийшов. Зовсім нормально зустрічати помилки. Якщо ви стикаєтеся і хочете шукати рішення. Ви можете швидко надіслати нам його у розділі Допомога. Додаток з'явиться вперше і єдиний раз в цьому жанрі з вашою підтримкою. Не забувайте розважатися, використовуючи додаток",
        .attentionSecondDescription: "Оновлення відбувається 21-го кожного місяця. Перевірте наш Twitter"
    ]
    
    let authOnboarding: [textHelperAuthCompletion.onboarding:String] = [
        .heartofAstrologyTitle: "Ви в серці астрології",
        .secretOfTheStarsTitle: "Відкрийте таємниці зірок",
        .yourFutureTitle: "Хочете знати своє майбутнє?",
        .heartofAstrologyDescription: "Знання вашого гороскопу дозволяє вам краще планувати майбутнє",
        .secretOfTheStarsDescription: "Відкрийте таємниці зірок, розкриваючи складність астрології, все тут в одному місці",
        .yourFutureDescription: "Aiachy направить вас на прекрасний шлях і покаже вам маленькі поради щодо вашого майбутнього",
        .privacyPolicy: "Створюючи обліковий запис, ви погоджуєтеся з нашою Політикою конфіденційності та Умовами використання."
    ]
    let authHelperAuth: [textHelperAuthCompletion.helperAuth:String] = [
        .clock: "Година"
    ]
    
    // MARK: - UkrainianLanguage - HomeCompletion -
    typealias textHelperHomeCompletion = TextHelper.HomeCompletion
    let home: [textHelperHomeCompletion.home:String] = [
        .horoscope: "Гороскоп",
        .ascendant: "Асцендент",
        .compatibility: "Сумісність",
        .notUsable: "Не доступно. Вам потрібно підписатися.",
        .notHaveAscendant: "Вам потрібно вибрати восходячий знак."
    ]
    let homeDate: [textHelperHomeCompletion.date:String] = [
        .yesterday: "Вчора",
        .today: "Сьогодні",
        .tomorrow: "Завтра"
    ]
    let homeStatus: [textHelperHomeCompletion.status:String] = [
        .universe: "Всесвіт",
        .enlightenment: "Проосвітлення",
        .touch: "Дотик",
        .love: "Любов",
        .strength: "Сила",
        .creative: "Творчість",
        .foundation: "Фундація"
    ]
    
    // MARK: - UkrainianLanguage - LoveCompletion -
    typealias textHelperLoveCompletion = TextHelper.LoveCompletion
    let love: [textHelperLoveCompletion.love:String] = [
        .attentionTitle: "Майбутнє кохання лежить трохи далі, будьте терплячі"
    ]
    
    // MARK: - UkrainianLanguage - MysticCompletion -
    typealias textHelperMysticCompletion = TextHelper.MysticCompletion
    let mystic: [textHelperMysticCompletion.mystic:String] = [
        .tarotTitle: "Таро",
        .palmistryTitle: "Хіромантія",
        .crystalGazingTitle: "Кришталеве дивування",
        .tarotDescription: "Не доступно для використання",
        .palmistyrDescription: "Не доступно для використання",
        .crystalGazingDescription: "Не доступно для використання"
    ]
    
    // MARK: - UkrainianLanguage - GalaxyCompletion -
    typealias textHelperGalaxyCompletion = TextHelper.GalaxyCompletion
    let galaxy: [textHelperGalaxyCompletion.galaxy:String] = [
        .tuneTitle: "Мелодія",
        .meditationTitle: "Медитація"
    ]
    let galaxyTune: [textHelperGalaxyCompletion.tune:String] = [
        .play: "Грати",
        .stop: "Зупинити",
        .clickToDownload: "Натисніть, щоб завантажити",
        .downloading: "Завантаження"
    ]
    
    // MARK: - UkrainianLanguage - SettingsCompletion -
    typealias textHelperSettingsCompletion = TextHelper.SettingsCompletion
    let settings: [textHelperSettingsCompletion.settings:String] = [
        .aicyCashTitle: "AicyCash",
        .oracleTitle: "Оракул",
        .oracleHelper: "Немає",
        .languageTitle: "Мова",
        .themeTitle: "Тема",
        .themeLightHelper: "Світла",
        .themeDarkHelper: "Темна"
    ]
    let settingsLanguage: [textHelperSettingsCompletion.language:String] = [
        .currentLanguage: "Поточна мова",
        .otherLanguage: "Інша мова"
    ]
    let settingsOracle: [textHelperSettingsCompletion.oracle: String] = [
        .packageZodiacTitle: "Зодіак",
        .packageZodiacItem1: "Ваш астрологічний графік буде переповнений космічною мудрістю, допомагаючи вам краще розуміти напрямок вашого життя.",
        .packageZodiacItem2: "Карти Таро відкриють для вас нові двері та зміцнять вашу інтуїцію",
        .packageZodiacItem3: "Нові музичні частоти піднімуть вашу душу та відкриють для вас нові емоційні ландшафти.",
        .packageOracleTitle: "Оракул",
        .packageOracleItem1: "У вас буде доступ до функцій усіх доступних пакетів, роблячи вас добре оснащеним у кожній області.",
        .packageOracleItem2: "Інноваційні функції будуть у вас на піддоспі, даючи вам крок впереди всіх інших.",
        .packageOracleItem3: "Доброта, яку ви показали, залишить вічний відбиток на серцях.",
        .packageOracleItem4: "Цей пакет буде невід'ємним інструментом для підняття та покращення вашого додатку."
    ]
    
    // MARK: - UkrainianLanguage - ZodiacCompletion -
    typealias textHelperZodiacCompletion = TextHelper.ZodiacCompletion
    let zodiac: [textHelperZodiacCompletion.zodiac:String] = [
        .piscesZodiacName: "Риби",
        .piscesZodiacDate: "20 лютого - 20 березня",
        .ariesZodiacName: "Овен",
        .ariesZodiacDate: "21 березня - 20 квітня",
        .aquariusZodiacName: "Водолій",
        .aquariusZodiacDate: "21 січня - 19 лютого",
        .geminiZodiacName: "Близнюки",
        .geminiZodiacDate: "21 травня - 21 червня",
        .libraZodiacName: "Терези",
        .libraZodiacDate: "24 вересня - 23 жовтня",
        .virgoZodiacName: "Діва",
        .virgoZodiacDate: "24 серпня - 23 вересня",
        .capricornZodiacName: "Козеріг",
        .capricornZodiacDate: "22 грудня - 20 січня",
        .sagittariusZodiacName: "Стрілець",
        .sagittariusZodiacDate: "23 листопада - 21 грудня",
        .leoZodiacName: "Лев",
        .leoZodiacDate: "23 липня - 23 серпня",
        .scorpioZodiacName: "Скорпіон",
        .scorpioZodiacDate: "24 жовтня - 22 листопада",
        .taurusZodiacName: "Телець",
        .taurusZodiacDate: "21 квітня - 20 травня",
        .cancerZodiacName: "Рак",
        .cancerZodiacDate: "22 червня - 22 липня"
    ]
}

