//
//  TurkishLanguage.swift
//  Aiachy
//
//  Created by Mert Türedü on 23.08.2023.
//

import Foundation

struct TurkishLanguage {
    //MARK: - TurkishLanguage - textHelperGeneralCompletion -
    typealias textHelperGeneralCompletion = TextHelper.GeneralCompletion
    let generalButton: [TextHelper.GeneralCompletion.button:String] = [
        .back: "Geri",
        .continue: "Devam Et",
        .login: "Giriş Yap",
        .guest: "Misafir",
        .resetPassword: "Şifrenizi mi unuttunuz?",
        .register: "Mistik Bir Maceraya Atıl",
        .chooseLocation: "Konumunuzu Seçin",
        .preRegistration: "Ön Kayıt",
        .logout: "Çıkış Yap"
    ]

    let generalFlag: [textHelperGeneralCompletion.flag:String] = [
        .unitedArabEmirates: "United Arab Emirates",
        .germany: "Almanya",
        .denmark: "Danimarka",
        .france: "Fransa",
        .unitedKingdom: "İngiltere",
        .greece: "Yunan",
        .italy: "İtalya",
        .poland: "Polonya",
        .romania: "Romanya",
        .russianFederation: "Rusya",
        .türkiye: "Türkiye",
        .ukraine: "Ukrayna",
        .unitedStates: "Amerika"
    ]
    //MARK: - TurkishLanguage - textHelperAlertCompletion -
    typealias textHelperAlertCompletion = TextHelper.AlertCompletion
    let alert: [textHelperAlertCompletion.alert:String] = [
        .notUserHaveConnection: "Lütfen internete bağlı olduğunuzdan emin olun",
        .notUserIsOlder: "Lütfen yaşınızı girin. 13 yaşından büyük olmalısınız",
        .notUserHavePlace: "Bir yer seçmediniz. Lütfen yerinizi seçin",
        .areYouSure: "Emin misiniz?",
        .appError: "Uygulama hatası",
        .needToRegister: "Kayıt olmanız gerekiyor.",
        .notReady: "Uygulamanın bu versiyonunda bu sayfa hazır değildir."
    ]
    let alertButton: [textHelperAlertCompletion.button:String] = [
        .tryAgain: "Tekrar Dene",
        .yes: "Evet",
        .no: "Hayır",
        .okey: "Tamam"
    ]

    //MARK: - TurkishLanguage - textHelperTextFieldCompletion -
    typealias textHelperTextFieldCompletion = TextHelper.TextFieldCompletion
    let textField: [textHelperTextFieldCompletion.textField:String] = [
        .mailPhone: "E-posta/Telefon",
        .password: "Şifre",
        .againPassword: "Şifreyi Tekrarla",
        .phone: "Telefon",
        .name: "Ad",
        .surname: "Soyad",
        .mail: "E-posta",
        .place: "Yer"
    ]
    let textFieldError: [textHelperTextFieldCompletion.error:String] = [
        .emailWrong: "E-postanız yanlış",
        .passwordWrong: "Şifreniz yanlış",
        .nameNotFill: "Lütfen adınızı doldurun",
        .nameMinCharacter: "Ad en az 2 karakter olmalı",
        .surnameMinCharacter: "Soyad en az 2 karakter olmalı",
        .surnameNotFill: "Lütfen soyadınızı doldurun",
        .mailNotFill: "Lütfen e-postanızı doldurun",
        .passwordNotFill: "Lütfen şifrenizi doldurun",
        .passwordAgainNotFill: "Lütfen şifrenizi tekrar doldurun",
        .passwordNotSame: "Şifreler aynı değil",
        .passwordMinCharacter: "Şifre en az 6 karakter olmalı",
        .mailCharactersWrong: "E-posta adresiniz uyumlu değil",
        .phoneCharactersWrong: "Telefon numaranız uyumlu değil",
        .mailCantFound: "E-postanız yanlış",
        .phoneCantFound: "Telefon numaranız yanlış",
        .passwordCantFound: "Şifreniz yanlış",
        .mailUsedBefore: "Bu e-posta daha önce kullanılmış"
    ]
    
    // MARK: - TurkishLanguage - AuthCompletion -
    typealias textHelperAuthCompletion = TextHelper.AuthCompletion
    let authTitle: [textHelperAuthCompletion.title:String] = [
        .loginScreenTitle: "Sihri Ortaya Çıkar, Aiachy'nin Krallığında Yolculuk Yap",
        .crystalSelectionTitle: "Doğumunun mistik kristalini keşfet",
        .registerTitle: "Burç Potansiyelini Serbest Bırak",
        .ascendantSelectionTitle: "İçsel Parıltını Aydınlat",
        .attentionTitle: "DİKKAT",
    ]

    let authDescription: [textHelperAuthCompletion.description:String] = [
        .loginScreenDescription: "Eterin Gizemlerini Çöz, Aiachy'nin Kutsal Sığınağına Adım At ve Göksel Ruhların Dansını Şahit Ol!",
        .crystalSelectionDescription: "Geleceğini öğrenme zamanı geldi",
        .registerDescription: "Kişiselleştirilmiş bir burç deneyimi için Aiachy'ye adım at! Burç bilgilerini gizli detaylarınla özelleştirelim ve seni benzersiz bir yolculuğa çıkaralım",
        .ascendantSelectionDescription: "Yükselen İşaretinle Dönüştürücü Bir Yolculuğa Başla ve İçindeki Gücü Serbest Bırak",
        .ascendantSelectionViewGuideDescription: "Doğum tarihi ve saatini seçin",
        .attentionDescription: "Uygulama hala tam olarak çıkış yapmış değil. Hatalarla karşılaşmanız çok normal. Karşılaşırsanız ve bir çözüm aramak isterseniz. Bunu bize Hızlıca Yardım bölümünden gönderebilirsiniz. Uygulama, desteğinizle bu türde ilk ve tek kez görünecektir. Uygulamayı kullanırken eğlenmeyi unutmayın",
        .attentionSecondDescription: "Güncelleme her ayın 21'inde geliyor. Twitter'ımızı Kontrol Edin"
    ]

    
    let authOnboarding: [textHelperAuthCompletion.onboarding:String] = [
        .heartofMysticTitle: "Mistik evrenin kalbinde olduğun",
        .secretOfTheStarsTitle: "Yıldızların Sırlarını Ortaya Çıkar",
        .yourFutureTitle: "Geleceğinizi bilmek ister misiniz",
        .heartofMysticDescription: "Mistik bir dünyanın kapılarını açmak, geleceğinizi daha etkili bir şekilde planlamanıza olanak tanır",
        .secretOfTheStarsDescription: "Ölümlü Alem'in Perdesinin Ötesinde, Yıldızların Mistik Fısıltılarıyla Dans Edin, Kutsal Kozmosun Sırlarını Çözün",
        .yourFutureDescription: "Aiachy, sizi güzel bir yolda yönlendirecek ve geleceğinizle ilgili küçük ipuçları gösterecek",
    ]
    let authHelperAuth: [textHelperAuthCompletion.helperAuth:String] = [
        .clock: "Saat",
        .privacyPolicy: "Bir hesap oluşturarak, Gizlilik Politikamıza ve Kullanım Şartlarımıza katılmış olursunuz."
    ]
    // MARK: - TurkishLanguage - HomeCompletion -
    typealias textHelperHomeCompletion = TextHelper.HomeCompletion
    let home: [textHelperHomeCompletion.home:String] = [
        .aiachy:"Aiachy",
        .compatibility:"Uyumluluk",
        .notUsable: "Kullanılamaz. Abone olmanız gerekmektedir.",
        .notHaveAscendant: "Yükselen burcunuzu seçmeniz gerekmektedir."
    ]

    let homeDate: [textHelperHomeCompletion.date:String] = [
        .yesterday:"Dün",
        .today:"Bugün",
        .tomorrow:"Yarın",
    ]

    let homeStatus: [textHelperHomeCompletion.status:String] = [
        .universe:"Evren",
        .enlightenment:"Aydınlanma",
        .touch:"Dokunuş",
        .love:"Aşk",
        .strength:"Güç",
        .creative:"Yaratıcı",
        .foundation:"Temel"
    ]

    // MARK: - TurkishLanguage - LoveCompletion -
    typealias textHelperLoveCompletion = TextHelper.LoveCompletion
    let love: [textHelperLoveCompletion.love:String] = [
        .attentionTitle:"Aşkın geleceği biraz daha ileride, sabırlı olun"
    ]

    // MARK: - TurkishLanguage - MysticCompletion -
    typealias textHelperMysticCompletion = TextHelper.MysticCompletion
    let mystic: [textHelperMysticCompletion.mystic:String] = [
        .tarotTitle:"Tarot",
        .palmistryTitle:"El Falı",
        .crystalGazingTitle:"Kristal Kehanet",
        .tarotDescription:"Kullanılamaz",
        .palmistyrDescription:"Kullanılamaz",
        .crystalGazingDescription:"Kullanılamaz"
    ]

    // MARK: - TurkishLanguage - GalaxyCompletion -
    typealias textHelperGalaxyCompletion = TextHelper.GalaxyCompletion
    let galaxy: [textHelperGalaxyCompletion.galaxy:String] = [
        .tuneTitle: "Melodi",
        .meditationTitle: "Meditasyon"
    ]
    let galaxyTune: [textHelperGalaxyCompletion.tune:String] = [
        .play: "Oynat",
        .stop: "Durdur",
        .clickToDownload: "İndirmek için Tıklayın",
        .downloading: "İndiriliyor"
    ]
    // MARK: - TurkishLanguage - SettingsCompletion -
    typealias textHelperSettingsCompletion = TextHelper.SettingsCompletion
    let settings: [textHelperSettingsCompletion.settings:String] = [
        .aicyCashTitle: "AicyCash",
        .oracleTitle: "Orakel",
        .oracleHelper: "Hiçbiri",
        .languageTitle: "Dil",
        .themeTitle: "Tema",
        .themeLightHelper: "Açık",
        .themeDarkHelper: "Koyu"
    ]

    let settingsLanguage: [textHelperSettingsCompletion.language:String] = [
        .currentLanguage: "Geçerli Dil",
        .otherLanguage: "Diğer Dil"
    ]

    let settingsOracle: [textHelperSettingsCompletion.oracle: String] = [
        .universalWisdomTitle: "Evrensel bilgelik",
        .universalWisdomOccult1: "Evrenin bilgi nehri'ni kapattığınızda, daha derin sırlar gizemli alemlerden size akacak.",
        .universalWisdomOccult2: "Yarının sırlarına ilk elden tanık olacak, geleceği daha derinlemesine anlama ve şifreleme yeteneği kazanacaksınız.",
        .universalWisdomOccult3: "Çakraları daha geniş bir şekilde gözlemleme yeteneğiyle, iç enerjinizin rehberliğinde günlerinizi yorumlama yeteneğinizi derinleştireceksiniz.",
        .universalWisdomOccult4: "Özellikle, günlük içgörülerinizi daha derinlemesine inceleyebilecek ve girişimlerinizi daha net algılayabilecek, böylece tavsiyelerinizi daha ayrıntılı bir şekilde şekillendirme fırsatı elde edeceksiniz.",
        .universalWisdomOracle1: "Bu özel paket, Okült'ün Evrensel Bilgelik özelliklerinin tümünü kapsamaktadır.",
        .universalWisdomOracle2: "Sunduğunuz bu kutsal destek, önceden hatırlanacak ve evrenin sırlarından size pozitif enerjilerle geri dönecektir.",
        .universalWisdomOracle3: "Beta testindeki yeni özelliklere ilk erişimi elde edecek, gelen iyileştirmelerle yolu açacaksınız.",
        .universalWisdomOracle4: "Erişim kapısı aracılığıyla size yakın geleceğin özel görselleştirmeleri sunulacak.",
        .thresholdOfTheSoulTitle: "Ruhun Eşiği",
        .thresholdOfTheSoulOccult1: "Yeni müzik frekansları ruhunuzu yükseltecek ve size yeni duygusal manzaralar açacak.",
        .thresholdOfTheSoulOccult2: "Gizemli alem'in kapılarının arkasında, tarot'un derinliklerine, elinizin kader çizgilerine ve kürenin sırlarına daha derin bir erişim sizi bekliyor.",
        .thresholdOfTheSoulOccult3: "Kişiselleştirilmiş melodilerin sihirli dünyasına adım atacak ve geleceğin gizli melodilerini keşfedeceksiniz.",
        .thresholdOfTheSoulOccult4: "Kişiselleştirilmiş gizemli taşların gizemine daha derinlemesine dalmak için fırsat bulacaksınız.",
        .thresholdOfTheSoulOracle1: "Bu özel paket, Okült'ün Ruhun Eşiği özelliklerinin tümünü kapsamaktadır.",
        .thresholdOfTheSoulOracle2: "Sunduğunuz bu kutsal destek, önceden hatırlanacak ve evrenin sırlarından size pozitif enerjilerle geri dönecektir.",
        .thresholdOfTheSoulOracle3: "Beta testindeki yeni özelliklere ilk erişimi elde edecek, gelen iyileştirmelerle yolu açacaksınız.",
        .thresholdOfTheSoulOracle4: "Erişim kapısı aracılığıyla size yakın geleceğin özel görselleştirmeleri sunulacak."
    ]


    // MARK: - TurkishLanguage - ZodiacCompletion -
    typealias textHelperSpiritualCompletion = TextHelper.SpiritualCompletion
    let crystalZodiac: [textHelperSpiritualCompletion.crystal:String] = [
        .ariesCrystal: "Ametist",
        .taurusCrystal: "Kaplan Gözü",
        .geminiCrystal: "Gül Kuvars",
        .cancerCrystal: "Labradorit",
        .leoCrystal: "Granat",
        .virgoCrystal: "Ay Taşı",
        .libraCrystal: "Lapis Lazuli",
        .scorpioCrystal: "Turmalin",
        .sagittariusCrystal: "Obsidyen",
        .capricornCrystal: "Kristal Kuvars",
        .aquariusCrystal: "Akvamarin",
        .piscesCrystal: "İnci"
    ]
    let zodiac: [textHelperSpiritualCompletion.zodiac:String] = [
        .pisces: "Balık",
        .aries: "Koç",
        .aquarius: "Kova",
        .gemini: "İkizler",
        .libra: "Terazi",
        .virgo: "Başak",
        .capricorn: "Oğlak",
        .sagittarius: "Yay",
        .leo: "Aslan",
        .scorpio: "Akrep",
        .taurus: "Boğa",
        .cancer: "Yengeç"
    ]

    
    let dateZodiac: [textHelperSpiritualCompletion.dateZodiac:String] = [
        .piscesZodiacDate: "20 Şub - 20 Mar",
        .ariesZodiacDate: "21 Mar - 20 Nis",
        .aquariusZodiacDate: "21 Oca - 19 Şub",
        .geminiZodiacDate: "21 May - 21 Haz",
        .libraZodiacDate: "24 Eyl - 23 Eki",
        .virgoZodiacDate: "24 Ağu - 23 Eyl",
        .capricornZodiacDate: "22 Ara - 20 Oca",
        .sagittariusZodiacDate: "23 Kas - 21 Ara",
        .leoZodiacDate: "23 Tem - 23 Ağu",
        .scorpioZodiacDate: "24 Eki - 22 Kas",
        .taurusZodiacDate: "21 Nis - 20 May",
        .cancerZodiacDate: "22 Haz - 22 Tem"
    ]

}
