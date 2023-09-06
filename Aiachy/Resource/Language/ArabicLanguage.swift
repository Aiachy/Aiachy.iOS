//
//  ArabicLanguage.swift
//  Aiachy
//
//  Created by Mert Türedü on 23.08.2023.
//

import Foundation

struct ArabicLanguage {
    //MARK: - ArabicLanguage - textHelperGeneralCompletion -
    typealias textHelperGeneralCompletion = TextHelper.GeneralCompletion
    let generalButton: [TextHelper.GeneralCompletion.button:String] = [
        .back: "رجوع",
        .continue: "استمر",
        .login: "تسجيل الدخول",
        .guest: "ضيف",
        .resetPassword: "نسيت كلمة المرور؟",
        .register: "ابدأ في مغامرة سحرية",
        .chooseLocation: "اختر موقعك",
        .preRegistration: "التسجيل المسبق",
        .logout: "تسجيل الخروج"
    ]
    let generalFlag: [textHelperGeneralCompletion.flag:String] = [
        .unitedArabEmirates: "الإمارات العربية المتحدة",
        .germany: "ألمانيا",
        .denmark: "الدنمارك",
        .france: "فرنسا",
        .unitedKingdom: "المملكة المتحدة",
        .greece: "اليونان",
        .italy: "إيطاليا",
        .poland: "بولندا",
        .romania: "رومانيا",
        .russianFederation: "الفدرالية الروسية",
        .türkiye: "تركيا",
        .ukraine: "أوكرانيا",
        .unitedStates: "الولايات المتحدة"
    ]
    //MARK: - ArabicLanguage - textHelperAlertCompletion -
    typealias textHelperAlertCompletion = TextHelper.AlertCompletion
    let alert: [textHelperAlertCompletion.alert:String] = [
        .notUserHaveConnection: "يرجى التأكد من اتصالك بالإنترنت",
        .notUserIsOlder: "يرجى إدخال عمرك. يجب أن تكون أكبر من 13 عامًا",
        .notUserHavePlace: "لم تقم بتحديد مكانك. يرجى تحديد مكانك",
        .areYouSure: "هل أنت متأكد؟",
        .appError: "خطأ في التطبيق",
        .needToRegister: "تحتاج إلى التسجيل",
        .notReady: "هذه الصفحة غير متوفرة في هذا الإصدار من التطبيق."
    ]
    let alertButton: [textHelperAlertCompletion.button:String] = [
        .tryAgain: "حاول مرة أخرى",
        .yes: "نعم",
        .no: "لا",
        .okey: "حسنًا"
    ]
    //MARK: - ArabicLanguage - TextFieldCompletion -
       typealias textHelperTextFieldCompletion = TextHelper.TextFieldCompletion
       let textField: [textHelperTextFieldCompletion.textField:String] = [
           .mailPhone: "البريد الإلكتروني/الهاتف",
           .password: "كلمة المرور",
           .againPassword: "أعد كلمة المرور",
           .phone: "الهاتف",
           .name: "الاسم",
           .surname: "اللقب",
           .mail: "البريد الإلكتروني",
           .place: "المكان"
       ]
       let textFieldError: [textHelperTextFieldCompletion.error:String] = [
           .emailWrong: "بريدك الإلكتروني غير صحيح",
           .passwordWrong: "كلمة المرور غير صحيحة",
           .nameNotFill: "يرجى ملء اسمك",
           .nameMinCharacter: "يجب أن يكون الاسم على الأقل من حرفين",
           .surnameMinCharacter: "يجب أن يكون اللقب على الأقل من حرفين",
           .surnameNotFill: "يرجى ملء لقبك",
           .mailNotFill: "يرجى ملء بريدك الإلكتروني",
           .passwordNotFill: "يرجى ملء كلمة المرور",
           .passwordAgainNotFill: "يرجى إعادة كلمة المرور",
           .passwordNotSame: "كلمات المرور غير متطابقة",
           .passwordMinCharacter: "يجب أن تكون كلمة المرور على الأقل من 6 أحرف",
           .mailCharactersWrong: "عنوان بريدك الإلكتروني غير متوافق",
           .phoneCharactersWrong: "هاتفك غير متوافق",
           .mailCantFound: "بريدك الإلكتروني غير صحيح",
           .phoneCantFound: "هاتفك غير صحيح",
           .passwordCantFound: "كلمة المرور غير صحيحة",
           .mailUsedBefore: "تم استخدام هذا البريد الإلكتروني من قبل"
       ]
    // MARK: -  ArabicLanguage - AuthCompletion -
     typealias textHelperAuthCompletion = TextHelper.AuthCompletion
     let auth: [textHelperAuthCompletion.auth:String] = [
         .loginScreenTitle: "افتح بوابات علم الفلك، دخول عالم Aiachy",
         .zodiacSelectionTitle: "لقد حان الوقت لمعرفة مستقبلك",
         .registerTitle: "أطلق قوتك الفلكية",
         .ascendantSelectionTitle: "أضئ رونقك الداخلي",
         .attentionTitle: "انتباه",
         .loginScreenDescription: "افتح أسرار علم الفلك، استمتع في عالم Aiachy الساحر، واستكشف عالم عجائب الفلك",
         .registerDescription: "خطوة إلى Aiachy لتجربة الأبراج الشخصية! دعنا نخصص معلومات الفلك الخاصة بك بتفاصيلك السرية ونأخذك في رحلة فريدة",
         .ascendantSelectionDescription: "شروع في رحلة محورية مع علامتك الصاعدة تطلق العنان للقوة داخلك",
         .ascendantSelectionViewGuideDescription: "حدد تاريخ ووقت الولادة",
         .attentionDescription: "التطبيق لا يزال لم يتم تسجيل الخروج بشكل كامل. من الطبيعي جداً مواجهة الأخطاء. إذا واجهت وترغب في البحث عن حلاً، يمكنك إرساله لنا بسرعة من قسم المساعدة. سيظهر التطبيق للمرة الأولى والوحيدة في هذا النوع بدعمك. لا تنسى أن تستمتع أثناء استخدام التطبيق",
         .attentionSecondDescription: "يأتي التحديث في 21 من كل شهر تحقق من تويترنا"
     ]
    let authOnboarding: [textHelperAuthCompletion.onboarding:String] = [
        .heartofAstrologyTitle: "أنت في قلب الفلك",
        .secretOfTheStarsTitle: "كشف أسرار النجوم",
        .yourFutureTitle: "هل ترغب في معرفة مستقبلك",
        .heartofAstrologyDescription: "معرفة برجك بشكل أفضل تساعدك على التخطيط للمستقبل بشكل أفضل",
        .secretOfTheStarsDescription: "اكتشف أسرار النجوم وكشف تفاصيل الفلك، كل ذلك هنا في مكان واحد",
        .yourFutureDescription: "سيوجهك Aiachy على مسار جميل ويظهر لك نصائح صغيرة عن مستقبلك",
        .privacyPolicy: "بإنشاء حساب، أنت توافق على سياسة الخصوصية وشروط الاستخدام الخاصة بنا."
    ]
    let authHelperAuth: [textHelperAuthCompletion.helperAuth:String] = [
        .clock: "الساعة"
    ]

    
    // MARK: -  ArabicLanguage - HomeCompletion -
       typealias textHelperHomeCompletion = TextHelper.HomeCompletion
       let home: [textHelperHomeCompletion.home:String] = [
           .horoscope: "الأبراج",
           .ascendant: "الصاعد",
           .compatibility: "التوافق",
           .notUsable: "غير متوفر. يجب عليك الاشتراك.",
           .notHaveAscendant: "تحتاج لاختيار العلامة الصاعدة."
       ]
       let homeDate: [textHelperHomeCompletion.date:String] = [
           .yesterday: "أمس",
           .today: "اليوم",
           .tomorrow: "غداً",
       ]
       let homeStatus: [textHelperHomeCompletion.status:String] = [
           .universe: "الكون",
           .enlightenment: "التنوير",
           .touch: "اللمس",
           .love: "الحب",
           .strength: "القوة",
           .creative: "الإبداع",
           .foundation: "الأساس"
       ]

       // MARK: - ArabicLanguage - LoveCompletion -
       typealias textHelperLoveCompletion = TextHelper.LoveCompletion
       let love: [textHelperLoveCompletion.love:String] = [
           .attentionTitle: "مستقبل الحب يكمن قليلاً أكثر، لذا كن صبوراً"
       ]

       // MARK: - ArabicLanguage - MysticCompletion -
       typealias textHelperMysticCompletion = TextHelper.MysticCompletion
       let mystic: [textHelperMysticCompletion.mystic:String] = [
           .tarotTitle: "التاروت",
           .palmistryTitle: "علم تفسير الكف",
           .crystalGazingTitle: "النظر في الكريستال",
           .tarotDescription: "غير متاح للاستخدام",
           .palmistyrDescription: "غير متاح للاستخدام",
           .crystalGazingDescription: "غير متاح للاستخدام"
       ]
        // MARK: - ArabicLanguage - GalaxyCompletion -
        typealias textHelperGalaxyCompletion = TextHelper.GalaxyCompletion
        let galaxy: [textHelperGalaxyCompletion.galaxy:String] = [
            .tuneTitle: "اللحن",
            .meditationTitle: "التأمل"
        ]
        let galaxyTune: [textHelperGalaxyCompletion.tune:String] = [
            .play: "تشغيل",
            .stop: "إيقاف",
            .clickToDownload: "انقر للتحميل",
            .downloading: "جارٍ التحميل"
        ]

        // MARK: - ArabicLanguage - SettingsCompletion -
        typealias textHelperSettingsCompletion = TextHelper.SettingsCompletion
        let settings: [textHelperSettingsCompletion.settings:String] = [
            .aicyCashTitle: "AicyCash",
            .oracleTitle: "المُعصب",
            .oracleHelper: "لا شيء",
            .languageTitle: "اللغة",
            .themeTitle: "المظهر",
            .themeLightHelper: "فاتح",
            .themeDarkHelper: "داكن"
        ]
        let settingsLanguage: [textHelperSettingsCompletion.language:String] = [
            .currentLanguage: "اللغة الحالية",
            .otherLanguage: "لغة أخرى"
        ]
    let settingsOracle: [textHelperSettingsCompletion.oracle: String] = [
        .packageZodiacTitle: "الفلكي",
        .packageZodiacItem1: "سيفيض خريطتك الفلكية بالحكمة الكونية، مما سيساعدك على فهم اتجاه حياتك بشكل أفضل.",
        .packageZodiacItem2: "ستفتح لك البطاقات الفلكية أبوابًا جديدة وتعزز من حدسك",
        .packageZodiacItem3: "سترفع الترددات الموسيقية الجديدة روحك وتفتح لك مشهدًا عاطفيًا جديدًا.",
        .packageOracleTitle: "المُعصب",
        .packageOracleItem1: "سيكون لديك وصول إلى ميزات جميع الحزم المتاحة، مما يجعلك مجهزًا جيدًا في كل المجالات.",
        .packageOracleItem2: "ستكون الميزات المبتكرة بين يديك، مما يعطيك خطوة قدمًا عن الجميع.",
        .packageOracleItem3: "اللطف الذي أظهرته سيترك بصمة دائمة على القلوب.",
        .packageOracleItem4: "ستكون هذه الحزمة أداة لا غنى عنها لرفع وتعزيز تطبيقك."
    ]
    // MARK: - ArabicLanguage - ZodiacCompletion -
    typealias textHelperZodiacCompletion = TextHelper.ZodiacCompletion
    let zodiac: [textHelperZodiacCompletion.zodiac:String] = [
        .piscesZodiacName: "الحوت",
        .piscesZodiacDate: "20 فبراير - 20 مارس",
        .ariesZodiacName: "الحمل",
        .ariesZodiacDate: "21 مارس - 20 إبريل",
        .aquariusZodiacName: "الدلو",
        .aquariusZodiacDate: "21 يناير - 19 فبراير",
        .geminiZodiacName: "الجمناز",
        .geminiZodiacDate: "21 مايو - 21 يونيو",
        .libraZodiacName: "الميزان",
        .libraZodiacDate: "24 سبتمبر - 23 أكتوبر",
        .virgoZodiacName: "العذراء",
        .virgoZodiacDate: "24 أغسطس - 23 سبتمبر",
        .capricornZodiacName: "الجدي",
        .capricornZodiacDate: "22 ديسمبر - 20 يناير",
        .sagittariusZodiacName: "القوس",
        .sagittariusZodiacDate: "23 نوفمبر - 21 ديسمبر",
        .leoZodiacName: "الأسد",
        .leoZodiacDate: "23 يوليو - 23 أغسطس",
        .scorpioZodiacName: "العقرب",
        .scorpioZodiacDate: "24 أكتوبر - 22 نوفمبر",
        .taurusZodiacName: "الثور",
        .taurusZodiacDate: "21 إبريل - 20 مايو",
        .cancerZodiacName: "السرطان",
        .cancerZodiacDate: "22 يونيو - 22 يوليو"
    ]
}

