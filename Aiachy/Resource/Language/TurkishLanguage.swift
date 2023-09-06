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
    let auth: [textHelperAuthCompletion.auth:String] = [
        .loginScreenTitle: "Astrolojinin Kapılarını Aç, Aiachy'nin Dünyasına Gir",
        .zodiacSelectionTitle: "Geleceğini öğrenme zamanı geldi",
        .registerTitle: "Zodyak Potansiyelini Serbest Bırak",
        .ascendantSelectionTitle: "İç Işığını Aydınlat",
        .attentionTitle: "DİKKAT",
        .loginScreenDescription: "Astrolojinin Gizemlerini Aç, Aiachy'nin Büyüleyici Dünyasına Dal ve Zodyak Harikalarının Büyüleyici Krallığına Keşfe Çık",
        .registerDescription: "Aiachy'ye kişiselleştirilmiş bir burç deneyimi için adım atın! Gizli detaylarınızla zodyak bilgilerinizi özelleştirelim ve sizi benzersiz bir yolculuğa çıkaralım",
        .ascendantSelectionDescription: "Yükselen Burcunuzla Dönüşümcü Bir Yolculuğa Çıkın, İçinizdeki Gücü Serbest Bırakın",
        .ascendantSelectionViewGuideDescription: "Doğum tarihi ve saatinizi seçin",
        .attentionDescription: "Uygulama hala tam olarak çıkış yapmadı. Hatalarla karşılaşmanız çok normal. Eğer karşılaşırsanız ve bir çözüm aramak isterseniz, Bize Yardım bölümünden hızlıca gönderebilirsiniz. Uygulama, desteklerinizle bu türde ilk ve tek kez ortaya çıkacak. Uygulamayı kullanırken eğlenmeyi unutmayın",
        .attentionSecondDescription: "Güncelleme her ayın 21'inde geliyor. Twitter'ımızı Kontrol Edin"
    ]

    let authOnboarding: [textHelperAuthCompletion.onboarding:String] = [
        .heartofAstrologyTitle: "Astrolojinin kalbindesiniz",
        .secretOfTheStarsTitle: "Yıldızların Sırlarını Ortaya Çıkar",
        .yourFutureTitle: "Geleceğinizi bilmek ister misiniz",
        .heartofAstrologyDescription: "Burcunuzu daha iyi bilmeniz geleceğiniz için daha iyi planlar yapmanızı sağlar",
        .secretOfTheStarsDescription: "Yıldızların Sırlarını Keşfedin, Astrolojinin Karmaşıklıklarını Ortaya Çıkarın, Hepsi Tek Bir Yerde",
        .yourFutureDescription: "Aiachy, sizi güzel bir yolda yönlendirecek ve geleceğinizle ilgili küçük ipuçları gösterecek",
        .privacyPolicy: "Bir hesap oluşturarak, Gizlilik Politikamıza ve Kullanım Şartlarımıza katılmış olursunuz."
    ]
    let authHelperAuth: [textHelperAuthCompletion.helperAuth:String] = [
        .clock: "Saat"
    ]
    // MARK: - TurkishLanguage - HomeCompletion -
    typealias textHelperHomeCompletion = TextHelper.HomeCompletion
    let home: [textHelperHomeCompletion.home:String] = [
        .horoscope:"Burç",
        .ascendant:"Yükselen",
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
        .packageZodiacTitle: "Burç",
        .packageZodiacItem1: "Astrolojik haritanız kozmik bilgelikle dolup taşacak, hayatınızın yönünü daha iyi anlamanıza yardımcı olacak.",
        .packageZodiacItem2: "Tarot kartları sizin için yeni kapılar açacak ve sezginizi güçlendirecek",
        .packageZodiacItem3: "Yeni müzikal frekanslar ruhunuzu yükseltecek ve sizin için yeni duygusal manzaralar açacak.",
        .packageOracleTitle: "Orakel",
        .packageOracleItem1: "Tüm mevcut paketlerin özelliklerine erişim sağlayacaksınız, sizi her alanda iyi donanımlı yapacak.",
        .packageOracleItem2: "Yenilikçi özellikler parmaklarınızın ucunda olacak, sizi herkesten bir adım öne çıkaracak.",
        .packageOracleItem3: "Gösterdiğiniz iyilik, kalplerde kalıcı bir iz bırakacak.",
        .packageOracleItem4: "Bu paket, uygulamanızı yükseltmek ve geliştirmek için vazgeçilmez bir araç olacak."
    ]

    // MARK: - TurkishLanguage - ZodiacCompletion -
    typealias textHelperZodiacCompletion = TextHelper.ZodiacCompletion
    let zodiac: [textHelperZodiacCompletion.zodiac:String] = [
        .piscesZodiacName: "Balık",
        .piscesZodiacDate: "20 Şub - 20 Mar",
        .ariesZodiacName: "Koç",
        .ariesZodiacDate: "21 Mar - 20 Nis",
        .aquariusZodiacName: "Kova",
        .aquariusZodiacDate: "21 Oca - 19 Şub",
        .geminiZodiacName: "İkizler",
        .geminiZodiacDate: "21 May - 21 Haz",
        .libraZodiacName: "Terazi",
        .libraZodiacDate: "24 Eyl - 23 Eki",
        .virgoZodiacName: "Başak",
        .virgoZodiacDate: "24 Ağu - 23 Eyl",
        .capricornZodiacName: "Oğlak",
        .capricornZodiacDate: "22 Ara - 20 Oca",
        .sagittariusZodiacName: "Yay",
        .sagittariusZodiacDate: "23 Kas - 21 Ara",
        .leoZodiacName: "Aslan",
        .leoZodiacDate: "23 Tem - 23 Ağu",
        .scorpioZodiacName: "Akrep",
        .scorpioZodiacDate: "24 Eki - 22 Kas",
        .taurusZodiacName: "Boğa",
        .taurusZodiacDate: "21 Nis - 20 May",
        .cancerZodiacName: "Yengeç",
        .cancerZodiacDate: "22 Haz - 22 Tem"
    ]

}
