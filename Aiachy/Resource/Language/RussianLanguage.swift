//
//  RussianLanguage.swift
//  Aiachy
//
//  Created by Mert Türedü on 23.08.2023.
//

import Foundation

struct RussianLanguage {
    
    // MARK: - RussianLanguage - textHelperGeneralCompletion -
    typealias textHelperGeneralCompletion = TextHelper.GeneralCompletion
    let generalButton: [textHelperGeneralCompletion.button:String] = [
        .back: "Назад",
        .continue: "Продолжить",
        .login: "Вход",
        .guest: "Гость",
        .resetPassword: "Забыли пароль?",
        .register: "Начать мистическое приключение",
        .chooseLocation: "Выберите ваше местоположение",
        .preRegistration: "Предварительная регистрация",
        .logout: "Выход"
    ]
    
    let generalFlag: [textHelperGeneralCompletion.flag:String] = [
        .unitedArabEmirates: "Объединенные Арабские Эмираты",
        .germany: "Германия",
        .denmark: "Дания",
        .france: "Франция",
        .unitedKingdom: "Великобритания",
        .greece: "Греция",
        .italy: "Италия",
        .poland: "Польша",
        .romania: "Румыния",
        .russianFederation: "Российская Федерация",
        .türkiye: "Турция",
        .ukraine: "Украина",
        .unitedStates: "Соединенные Штаты Америки"
    ]
    
    // MARK: - RussianLanguage - textHelperAlertCompletion -
    typealias textHelperAlertCompletion = TextHelper.AlertCompletion
    let alert: [textHelperAlertCompletion.alert:String] = [
        .notUserHaveConnection: "Пожалуйста, убедитесь, что вы подключены к интернету",
        .notUserIsOlder: "Пожалуйста, введите ваш возраст. Вам должно быть больше 13 лет",
        .notUserHavePlace: "Вы не выбрали ваше местоположение. Пожалуйста, выберите ваше местоположение",
        .areYouSure: "Вы уверены?",
        .appError: "Ошибка приложения",
        .needToRegister: "Вам необходимо зарегистрироваться",
        .notReady: "Эта страница не готова в этой версии приложения."
    ]
    let alertButton: [textHelperAlertCompletion.button:String] = [
        .tryAgain: "Попробовать снова",
        .yes: "Да",
        .no: "Нет",
        .okey: "Хорошо"
    ]
    
    // MARK: - RussianLanguage - textHelperTextFieldCompletion -
    typealias textHelperTextFieldCompletion = TextHelper.TextFieldCompletion
    let textField: [textHelperTextFieldCompletion.textField:String] = [
        .mailPhone: "Почта/Телефон",
        .password: "Пароль",
        .againPassword: "Пароль еще раз",
        .phone: "Телефон",
        .name: "Имя",
        .surname: "Фамилия",
        .mail: "Почта",
        .place: "Место"
    ]
    let textFieldError: [textHelperTextFieldCompletion.error:String] = [
        .emailWrong: "Ваша электронная почта неверна",
        .passwordWrong: "Ваш пароль неверен",
        .nameNotFill: "Пожалуйста, заполните ваше имя",
        .nameMinCharacter: "Имя должно быть минимум из 2 символов",
        .surnameMinCharacter: "Фамилия должна быть минимум из 2 символов",
        .surnameNotFill: "Пожалуйста, заполните вашу фамилию",
        .mailNotFill: "Пожалуйста, заполните вашу почту",
        .passwordNotFill: "Пожалуйста, заполните ваш пароль",
        .passwordAgainNotFill: "Пожалуйста, заполните ваш пароль еще раз",
        .passwordNotSame: "Пароли не совпадают",
        .passwordMinCharacter: "Пароль должен быть минимум из 6 символов",
        .mailCharactersWrong: "Ваш адрес электронной почты несовместим",
        .phoneCharactersWrong: "Ваш телефон несовместим",
        .mailCantFound: "Ваша почта неверна",
        .phoneCantFound: "Ваш телефон неверен",
        .passwordCantFound: "Ваш пароль неверен",
        .mailUsedBefore: "Эта электронная почта была использована ранее"
    ]
    
    // MARK: - RussianLanguage - AuthCompletion -
    typealias textHelperAuthCompletion = TextHelper.AuthCompletion
    let auth: [textHelperAuthCompletion.auth:String] = [
        .loginScreenTitle: "Откройте ворота астрологии, войдите в мир Aiachy",
        .zodiacSelectionTitle: "Пришло время узнать ваше будущее",
        .registerTitle: "Раскройте ваш зодиакальный потенциал",
        .ascendantSelectionTitle: "Освещение вашей внутренней радиации",
        .attentionTitle: "ВНИМАНИЕ",
        .loginScreenDescription: "Откройте тайны астрологии, окунитесь в очаровательный мир Aiachy и исследуйте удивительный мир зодиакальных чудес",
        .registerDescription: "Ступите в Aiachy для персонализированного опыта гороскопа! Позвольте нам настроить вашу зодиакальную информацию с вашими конфиденциальными данными и отправить вас в уникальное путешествие",
        .ascendantSelectionDescription: "Отправьтесь в трансформационное путешествие с вашим восходящим знаком. Раскройте внутреннюю силу",
        .ascendantSelectionViewGuideDescription: "Выберите дату и время рождения",
        .attentionDescription: "Приложение все еще не полностью вышло из системы. Встреча с ошибками очень нормальна. Если вы столкнетесь и захотите найти решение, вы можете быстро отправить его нам из раздела Помощь. Приложение появится в этом жанре в первый и единственный раз с вашей поддержкой. Не забудьте получать удовольствие, пока используете приложение",
        .attentionSecondDescription: "Обновление происходит 21-го числа каждого месяца. Проверьте наш Twitter"
    ]
    let authOnboarding: [textHelperAuthCompletion.onboarding:String] = [
        .heartofAstrologyTitle: "Вы находитесь в самом сердце астрологии",
        .secretOfTheStarsTitle: "Раскройте тайны звезд",
        .yourFutureTitle: "Хотите знать свое будущее",
        .heartofAstrologyDescription: "Зная ваш гороскоп лучше, вы сможете лучше планировать будущее",
        .secretOfTheStarsDescription: "Откройте тайны звезд, раскрывая тонкости астрологии, все здесь, в одном месте",
        .yourFutureDescription: "Aiachy будет направлять вас по красивому пути и показывать маленькие советы о вашем будущем",
        .privacyPolicy: "Создавая учетную запись, вы соглашаетесь с нашей Политикой конфиденциальности и Условиями использования."
    ]
    let authHelperAuth: [textHelperAuthCompletion.helperAuth:String] = [
        .clock: "Час"
    ]
    
    // MARK: - RussianLanguage - textHelperHomeCompletion -
    typealias textHelperHomeCompletion = TextHelper.HomeCompletion
    let home: [textHelperHomeCompletion.home:String] = [
        .horoscope: "Гороскоп",
        .ascendant: "Асцендент",
        .compatibility: "Совместимость",
        .notUsable: "Недоступно. Вам нужно подписаться.",
        .notHaveAscendant: "Вам нужно выбрать восходящий знак."
    ]
    let homeDate: [textHelperHomeCompletion.date:String] = [
        .yesterday: "Вчера",
        .today: "Сегодня",
        .tomorrow: "Завтра"
    ]
    let homeStatus: [textHelperHomeCompletion.status:String] = [
        .universe: "Вселенная",
        .enlightenment: "Прозрение",
        .touch: "Прикосновение",
        .love: "Любовь",
        .strength: "Сила",
        .creative: "Творчество",
        .foundation: "Основание"
    ]
    
    // MARK: - RussianLanguage - LoveCompletion -
    typealias textHelperLoveCompletion = TextHelper.LoveCompletion
    let love: [textHelperLoveCompletion.love:String] = [
        .attentionTitle: "Будущее любви лежит всего лишь немного дальше, будьте терпеливы"
    ]
    
    // MARK: - RussianLanguage - MysticCompletion -
    typealias textHelperMysticCompletion = TextHelper.MysticCompletion
    let mystic: [textHelperMysticCompletion.mystic:String] = [
        .tarotTitle: "Таро",
        .palmistryTitle: "Хиромантия",
        .crystalGazingTitle: "Кристалломантия",
        .tarotDescription: "Недоступно для использования",
        .palmistyrDescription: "Недоступно для использования",
        .crystalGazingDescription: "Недоступно для использования"
    ]
    
    // MARK: - RussianLanguage - GalaxyCompletion -
    typealias textHelperGalaxyCompletion = TextHelper.GalaxyCompletion
    let galaxy: [textHelperGalaxyCompletion.galaxy:String] = [
        .tuneTitle: "Мелодия",
        .meditationTitle: "Медитация"
    ]
    let galaxyTune: [textHelperGalaxyCompletion.tune:String] = [
        .play: "Играть",
        .stop: "Остановить",
        .clickToDownload: "Нажмите для скачивания",
        .downloading: "Загрузка"
    ]
    
    // MARK: - RussianLanguage - SettingsCompletion -
    typealias textHelperSettingsCompletion = TextHelper.SettingsCompletion
    let settings: [textHelperSettingsCompletion.settings:String] = [
        .aicyCashTitle: "AicyCash",
        .oracleTitle: "Оракул",
        .oracleHelper: "Нет",
        .languageTitle: "Язык",
        .themeTitle: "Тема",
        .themeLightHelper: "Светлая",
        .themeDarkHelper: "Темная"
    ]
    let settingsLanguage: [textHelperSettingsCompletion.language:String] = [
        .currentLanguage: "Текущий язык",
        .otherLanguage: "Другой язык"
    ]
    let settingsOracle: [textHelperSettingsCompletion.oracle:String] = [
        .packageZodiacTitle: "Зодиак",
        .packageZodiacItem1: "Ваш астрологический график будет переполнен космической мудростью, помогая вам лучше понимать направление вашей жизни.",
        .packageZodiacItem2: "Карты Таро откроют перед вами новые двери и укрепят вашу интуицию",
        .packageZodiacItem3: "Новые музыкальные частоты поднимут вашу душу и откроют перед вами новые эмоциональные пейзажи.",
        .packageOracleTitle: "Оракул",
        .packageOracleItem1: "У вас будет доступ ко всем доступным функциям пакетов, что сделает вас хорошо подготовленным в каждой области.",
        .packageOracleItem2: "Инновационные функции будут у вас под рукой, давая вам шаг впереди всех остальных.",
        .packageOracleItem3: "Доброта, которую вы проявили, оставит вечный след на сердцах.",
        .packageOracleItem4: "Этот пакет станет неотъемлемым инструментом для повышения и улучшения вашего приложения."
    ]
    
    // MARK: - RussianLanguage - ZodiacCompletion -
    typealias textHelperZodiacCompletion = TextHelper.ZodiacCompletion
    let zodiac: [textHelperZodiacCompletion.zodiac:String] = [
        .piscesZodiacName: "Рыбы",
        .piscesZodiacDate: "20 фев - 20 мар",
        .ariesZodiacName: "Овен",
        .ariesZodiacDate: "21 мар - 20 апр",
        .aquariusZodiacName: "Водолей",
        .aquariusZodiacDate: "21 янв - 19 фев",
        .geminiZodiacName: "Близнецы",
        .geminiZodiacDate: "21 май - 21 июн",
        .libraZodiacName: "Весы",
        .libraZodiacDate: "24 сен - 23 окт",
        .virgoZodiacName: "Дева",
        .virgoZodiacDate: "24 авг - 23 сен",
        .capricornZodiacName: "Козерог",
        .capricornZodiacDate: "22 дек - 20 янв",
        .sagittariusZodiacName: "Стрелец",
        .sagittariusZodiacDate: "23 ноя - 21 дек",
        .leoZodiacName: "Лев",
        .leoZodiacDate: "23 июл - 23 авг",
        .scorpioZodiacName: "Скорпион",
        .scorpioZodiacDate: "24 окт - 22 ноя",
        .taurusZodiacName: "Телец",
        .taurusZodiacDate: "21 апр - 20 май",
        .cancerZodiacName: "Рак",
        .cancerZodiacDate: "22 июн - 22 июл"
    ]
}

