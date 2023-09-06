//
//  GreekLanguage.swift
//  Aiachy
//
//  Created by Mert Türedü on 23.08.2023.
//

import Foundation

struct GreekLanguage {
    // MARK: - GreekLanguage - GeneralCompletion -
    typealias textHelperGeneralCompletion = TextHelper.GeneralCompletion
    let generalButton: [TextHelper.GeneralCompletion.button:String] = [
        .back: "Πίσω",
        .continue: "Συνέχεια",
        .login: "Σύνδεση",
        .guest: "Επισκέπτης",
        .resetPassword: "Ξεχάσατε τον κωδικό σας;",
        .register: "Ξεκινήστε μια μυστική περιπέτεια",
        .chooseLocation: "Επιλέξτε την τοποθεσία σας",
        .preRegistration: "Προεγγραφή",
        .logout: "Αποσύνδεση"
    ]

    let generalFlag: [textHelperGeneralCompletion.flag:String] = [
        .unitedArabEmirates: "Ηνωμένα Αραβικά Εμιράτα",
        .germany: "Γερμανία",
        .denmark: "Δανία",
        .france: "Γαλλία",
        .unitedKingdom: "Ηνωμένο Βασίλειο",
        .greece: "Ελλάδα",
        .italy: "Ιταλία",
        .poland: "Πολωνία",
        .romania: "Ρουμανία",
        .russianFederation: "Ρωσική Ομοσπονδία",
        .türkiye: "Τουρκία",
        .ukraine: "Ουκρανία",
        .unitedStates: "Ηνωμένες Πολιτείες"
    ]

    // MARK: - GreekLanguage - AlertCompletion -
    typealias textHelperAlertCompletion = TextHelper.AlertCompletion
    let alert: [textHelperAlertCompletion.alert:String] = [
        .notUserHaveConnection: "Βεβαιωθείτε ότι είστε συνδεδεμένοι στο διαδίκτυο",
        .notUserIsOlder: "Παρακαλούμε εισάγετε την ηλικία σας. Πρέπει να είστε άνω των 13 ετών",
        .notUserHavePlace: "Δεν έχετε επιλέξει τοποθεσία. Επιλέξτε την τοποθεσία σας",
        .areYouSure: "Είστε σίγουροι;",
        .appError: "Σφάλμα εφαρμογής",
        .needToRegister: "Πρέπει να εγγραφείτε",
        .notReady: "Αυτή η σελίδα δεν είναι έτοιμη σε αυτήν την έκδοση της εφαρμογής."
    ]

    let alertButton: [textHelperAlertCompletion.button:String] = [
        .tryAgain: "Δοκιμάστε ξανά",
        .yes: "Ναι",
        .no: "Όχι",
        .okey: "Εντάξει"
    ]

    // MARK: - GreekLanguage - TextFieldCompletion -
    typealias textHelperTextFieldCompletion = TextHelper.TextFieldCompletion
    let textField: [textHelperTextFieldCompletion.textField:String] = [
        .mailPhone: "Mail/Τηλέφωνο",
        .password: "Κωδικός",
        .againPassword: "Κωδικός ξανά",
        .phone: "Τηλέφωνο",
        .name: "Όνομα",
        .surname: "Επίθετο",
        .mail: "Mail",
        .place: "Τοποθεσία"
    ]

    // MARK: - GreekLanguage - TextFieldErrorCompletion -
    let textFieldError: [textHelperTextFieldCompletion.error:String] = [
        .emailWrong: "Το email σας είναι λάθος",
        .passwordWrong: "Ο κωδικός σας είναι λάθος",
        .nameNotFill: "Παρακαλούμε συμπληρώστε το όνομά σας",
        .nameMinCharacter: "Το όνομα πρέπει να έχει τουλάχιστον 2 χαρακτήρες",
        .surnameMinCharacter: "Το επίθετο πρέπει να έχει τουλάχιστον 2 χαρακτήρες",
        .surnameNotFill: "Παρακαλούμε συμπληρώστε το επίθετό σας",
        .mailNotFill: "Παρακαλούμε συμπληρώστε το email σας",
        .passwordNotFill: "Παρακαλούμε συμπληρώστε τον κωδικό σας",
        .passwordAgainNotFill: "Παρακαλούμε συμπληρώστε τον κωδικό σας ξανά",
        .passwordNotSame: "Οι κωδικοί δεν ταιριάζουν",
        .passwordMinCharacter: "Ο κωδικός πρέπει να έχει τουλάχιστον 6 χαρακτήρες",
        .mailCharactersWrong: "Η διεύθυνση email σας δεν είναι συμβατή",
        .phoneCharactersWrong: "Ο αριθμός τηλεφώνου σας δεν είναι συμβατός",
        .mailCantFound: "Το email σας είναι λανθασμένο",
        .phoneCantFound: "Ο αριθμός τηλεφώνου σας είναι λανθασμένος",
        .passwordCantFound: "Ο κωδικός σας είναι λανθασμένος",
        .mailUsedBefore: "Αυτή η διεύθυνση email έχει ήδη χρησιμοποιηθεί"
    ]
    // MARK: - GreekLanguage - AuthCompletion -
    typealias textHelperAuthCompletion = TextHelper.AuthCompletion
    let auth: [textHelperAuthCompletion.auth:String] = [
        .loginScreenTitle: "Ξεκλειδώστε τις Πύλες της Αστρολογίας, Εισέλθετε στον Κόσμο της Aiachy",
        .zodiacSelectionTitle: "Έχει έρθει η ώρα να μάθετε το μέλλον σας",
        .registerTitle: "Απελευθερώστε το Δυναμικό του Ζωδίου σας",
        .ascendantSelectionTitle: "Φωτίστε την Εσωτερική σας Λάμψη",
        .attentionTitle: "ΠΡΟΣΟΧΗ",
        .loginScreenDescription: "Ξεκλειδώστε τα Μυστήρια της Αστρολογίας, Βουτήξτε στον Εντυπωσιακό Κόσμο της Aiachy και Εξερευνήστε το Συναρπαστικό Σύμπαν των Ζωδιακών Θαυμάτων",
        .registerDescription: "Βήμα στην Aiachy για μια προσωποποιημένη εμπειρία οροσκόπιου! Ας προσαρμόσουμε τις πληροφορίες του ζωδίου σας με τα εμπιστευτικά στοιχεία σας και να σας πάρει σε ένα μοναδικό ταξίδι",
        .ascendantSelectionDescription: "Εναρκολογήστε ένα Μετασχηματιστικό Ταξίδι με το Ανυψωτικό σας Σημείο Απελευθερώστε τη Δύναμη Εντός",
        .ascendantSelectionViewGuideDescription: "Επιλέξτε ημερομηνία και ώρα γέννησης",
        .attentionDescription: "Η εφαρμογή δεν έχει αποσυνδεθεί πλήρως ακόμη. Είναι πολύ φυσιολογικό να συναντήσετε σφάλματα. Αν συναντήσετε και θέλετε να αναζητήσετε μια λύση, μπορείτε να το στείλετε γρήγορα σε εμάς από το τμήμα Βοήθειας. Η εφαρμογή θα εμφανιστεί για πρώτη και μοναδική φορά σε αυτό το είδος με τη στήριξή σας. Μην ξεχάσετε να διασκεδάσετε ενώ χρησιμοποιείτε την εφαρμογή",
        .attentionSecondDescription: "Η ενημέρωση έρχεται στις 21 κάθε μήνα Ελέγξτε το Twitter μας"
    ]

    let authOnboarding: [textHelperAuthCompletion.onboarding:String] = [
        .heartofAstrologyTitle: "Βρίσκεστε στην καρδιά της αστρολογίας",
        .secretOfTheStarsTitle: "Αποκαλύψτε τα Μυστικά των Αστέρων",
        .yourFutureTitle: "Θέλετε να γνωρίσετε το μέλλον σας;",
        .heartofAstrologyDescription: "Γνωρίζοντας καλύτερα το ορόσκοπό σας σας επιτρέπει να κάνετε καλύτερα σχέδια για το μέλλον",
        .secretOfTheStarsDescription: "Ανακαλύψτε τα Μυστικά των Αστέρων, Αποκαλύπτοντας τις Πολυπλοκότητες της Αστρολογίας, Όλα Εδώ σε Ένα Μέρος",
        .yourFutureDescription: "Η Aiachy θα σας οδηγήσει σε έναν όμορφο δρόμο και θα σας δείξει μικρές συμβουλές για το μέλλον σας",
        .privacyPolicy: "Δημιουργώντας έναν λογαριασμό, συμφωνείτε με την Πολιτική Απορρήτου και τους Όρους Χρήσης μας."
    ]

    let authHelperAuth: [textHelperAuthCompletion.helperAuth:String] = [
        .clock: "Ώρα"
    ]
    // MARK: - GreekLanguage - HomeCompletion -
    typealias textHelperHomeCompletion = TextHelper.HomeCompletion
    let home: [textHelperHomeCompletion.home:String] = [
        .horoscope: "Ωροσκόπιο",
        .ascendant: "Άνοδος",
        .compatibility: "Συμβατότητα",
        .notUsable: "Δεν είναι διαθέσιμο. Πρέπει να εγγραφείτε.",
        .notHaveAscendant: "Χρειάζεστε να επιλέξετε τον άνοδο."
    ]
    let homeDate: [textHelperHomeCompletion.date:String] = [
        .yesterday: "Χθες",
        .today: "Σήμερα",
        .tomorrow: "Αύριο",
    ]
    let homeStatus: [textHelperHomeCompletion.status:String] = [
        .universe: "Σύμπαν",
        .enlightenment: "Ενημέρωση",
        .touch: "Αφή",
        .love: "Αγάπη",
        .strength: "Δύναμη",
        .creative: "Δημιουργικότητα",
        .foundation: "Θεμέλιο"
    ]

    // MARK: - GreekLanguage - LoveCompletion -
    typealias textHelperLoveCompletion = TextHelper.LoveCompletion
    let love: [textHelperLoveCompletion.love:String] = [
        .attentionTitle: "Το μέλλον της αγάπης βρίσκεται λίγο πιο μακριά, οπότε να έχετε υπομονή"
    ]

    // MARK: - GreekLanguage - MysticCompletion -
    typealias textHelperMysticCompletion = TextHelper.MysticCompletion
    let mystic: [textHelperMysticCompletion.mystic:String] = [
        .tarotTitle: "Ταρώ",
        .palmistryTitle: "Χειρομαντεία",
        .crystalGazingTitle: "Κρυσταλλομαντεία",
        .tarotDescription: "Δεν είναι διαθέσιμο για χρήση",
        .palmistyrDescription: "Δεν είναι διαθέσιμο για χρήση",
        .crystalGazingDescription: "Δεν είναι διαθέσιμο για χρήση"
    ]

    // MARK: - GreekLanguage - GalaxyCompletion -
    typealias textHelperGalaxyCompletion = TextHelper.GalaxyCompletion
    let galaxy: [textHelperGalaxyCompletion.galaxy:String] = [
        .tuneTitle: "Τραγούδι",
        .meditationTitle: "Διαλογισμός"
    ]
    let galaxyTune: [textHelperGalaxyCompletion.tune:String] = [
        .play: "Παίξτε",
        .stop: "Σταματήστε",
        .clickToDownload: "Κάντε κλικ για λήψη",
        .downloading: "Λήψη"
    ]

    // MARK: - GreekLanguage - SettingsCompletion -
    typealias textHelperSettingsCompletion = TextHelper.SettingsCompletion
    let settings: [textHelperSettingsCompletion.settings:String] = [
        .aicyCashTitle: "AicyCash",
        .oracleTitle: "Οράκουλο",
        .oracleHelper: "Κανένα",
        .languageTitle: "Γλώσσα",
        .themeTitle: "Θέμα",
        .themeLightHelper: "Φως",
        .themeDarkHelper: "Σκοτάδι"
    ]
    let settingsLanguage: [textHelperSettingsCompletion.language:String] = [
        .currentLanguage: "Τρέχουσα Γλώσσα",
        .otherLanguage: "Άλλη Γλώσσα"
    ]
    let settingsOracle: [textHelperSettingsCompletion.oracle: String] = [
        .packageZodiacTitle: "Ζώδιο",
        .packageZodiacItem1: "Ο αστρολογικός σας χάρτης θα πλημμυρίσει με κοσμική σοφία, βοηθώντας σας να κατανοήσετε καλύτερα την κατεύθυνση της ζωής σας.",
        .packageZodiacItem2: "Οι κάρτες Ταρώ θα ανοίξουν νέες πόρτες για εσάς και θα ενισχύσουν τη διαίσθησή σας",
        .packageZodiacItem3: "Νέες μουσικές συχνότητες θα ανυψώσουν την ψυχή σας και θα ανοίξουν νέα συναισθηματικά τοπία για εσάς.",
        .packageOracleTitle: "Οράκουλο",
        .packageOracleItem1: "Θα έχετε πρόσβαση στις λειτουργίες όλων των διαθέσιμων πακέτων, καθιστώντας σας καλά εξοπλισμένους σε κάθε τομέα.",
        .packageOracleItem2: "Καινοτόμα χαρακτηριστικά θα είναι στα δάχτυλά σας, δίνοντάς σας ένα βήμα μπροστά από όλους τους άλλους.",
        .packageOracleItem3: "Η καλοσύνη που έχετε δείξει θα αφήσει ένα αιώνιο αποτύπωμα στις καρδιές.",
        .packageOracleItem4: "Αυτό το πακέτο θα είναι ένα απαραίτητο εργαλείο για την ανύψωση και τη βελτίωση της εφαρμογής σας."
    ]
    // MARK: - GreekLanguage - ZodiacCompletion -
    typealias textHelperZodiacCompletion = TextHelper.ZodiacCompletion
    let zodiac: [textHelperZodiacCompletion.zodiac:String] = [
        .piscesZodiacName: "Ιχθύες",
        .piscesZodiacDate: "20 Φεβ - 20 Μαρ",
        .ariesZodiacName: "Κριός",
        .ariesZodiacDate: "21 Μαρ - 20 Απρ",
        .aquariusZodiacName: "Υδροχόος",
        .aquariusZodiacDate: "21 Ιαν - 19 Φεβ",
        .geminiZodiacName: "Δίδυμοι",
        .geminiZodiacDate: "21 Μαϊ - 21 Ιουν",
        .libraZodiacName: "Ζυγός",
        .libraZodiacDate: "24 Σεπ - 23 Οκτ",
        .virgoZodiacName: "Παρθένος",
        .virgoZodiacDate: "24 Αυγ - 23 Σεπ",
        .capricornZodiacName: "Αιγόκερως",
        .capricornZodiacDate: "22 Δεκ - 20 Ιαν",
        .sagittariusZodiacName: "Τοξότης",
        .sagittariusZodiacDate: "23 Νοε - 21 Δεκ",
        .leoZodiacName: "Λέων",
        .leoZodiacDate: "23 Ιουλ - 23 Αυγ",
        .scorpioZodiacName: "Σκορπιός",
        .scorpioZodiacDate: "24 Οκτ - 22 Νοε",
        .taurusZodiacName: "Ταύρος",
        .taurusZodiacDate: "21 Απρ - 20 Μαϊ",
        .cancerZodiacName: "Καρκίνος",
        .cancerZodiacDate: "22 Ιουν - 22 Ιουλ"
    ]

}
