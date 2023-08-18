//
//  RegisterView.swift
//  Aiachy
//
//  Created by Mert Türedü on 19.07.2023.
//

import SwiftUI
//MARK: RegisterView - View
struct RegisterView: View {
    
    @EnvironmentObject var aiachyState: AiachyState
    @ObservedObject var presenter = RegisterPresenter()
    let router: AuthRouterPresenter
    
    var body: some View {
        ZStack {
            makeImageWithZodiacInt(aiachy: aiachyState)
                .resizable()
                .scaledToFit()
                .opacity(0.2)
                .padding(.all,15)
            VStack {
                //MARK: RegisterView - Back Button
                HStack {
                    ACYPassButton(isItBackButton: true,
                                  text: .BackButton) {
                        router.navigate(to: .zodiacSelectionView)
                    }
                    Spacer()
                }
                .padding(.horizontal)
                //MARK: RegisterView - Tittle & Description
                ACYTitleAndDescriptionText(title: ACYTextHelper.ACYAuthText.ACYauthTitleText.RegisterViewTitle.rawValue,
                                           description: ACYTextHelper.ACYAuthText.ACYauthDescriptionText.RegisterViewDescription.rawValue)
                //MARK: RegisterView - Name & Surname Textfields
                namesTextFields
                //MARK: RegisterView - Mail Textfield
                mailTextField
                //MARK: RegisterView - Password & Password Again Textfields
                passwordTextFields
                Spacer()
                //MARK: RegisterView - Continue Button
                continueButton
            }
        }
        .onAppear(perform: {
            presenter.userName = "1234"
            presenter.userSurname = "12345"
            presenter.userPassword = "1234567"
            presenter.userPasswordAgain = "1234567"
            presenter.userMail = "nomotetes.onetrue@gmail.com"
        })
        .environmentObject(aiachyState)
        .makeAccessibilitysForUITest(identifier: "RegisterViewID")
    }
}
//MARK: RegisterView -  Previews
struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView(router: AuthRouterPresenter())
            .environmentObject(ACY_PREVIEWS_STATE)
            .preferredColorScheme(.light)
    }
}
//MARK: RegisterView - Extension
extension RegisterView {
    //MARK: RegisterView - Name & Surname Textfields
    private var namesTextFields: some View {
        HStack {
            ACYTextField(textfieldString: $presenter.userName,
                         errorType: $presenter.userNameErrorType,
                         isNeedPreferenceButton: false,
                         isHalfTextField: true ,
                         isSecureField: false,
                         textFieldTitle: .NameTextField )
            Spacer()
            ACYTextField(textfieldString: $presenter.userSurname,
                         errorType: $presenter.userSurnameErrorType,
                         isNeedPreferenceButton: false,
                         isHalfTextField: true ,
                         isSecureField: false,
                         textFieldTitle: .SurnameTextField )
        }
        .frame(width: ACYdw(aiachyState, d: 0.9))
    }
    //MARK: RegisterView - Mail Textfield
    private var mailTextField: some View {
        ACYTextField(textfieldString: $presenter.userMail,
                     errorType: $presenter.userMailErrorType,
                     isNeedPreferenceButton: false,
                     isHalfTextField: false,
                     isSecureField: false,
                     textFieldTitle: .MailTextField)
        .keyboardType(.emailAddress)
    }
    //MARK: RegisterView - Password & Password Again Textfields
    private var passwordTextFields: some View {
        HStack {
            ACYTextField(textfieldString: $presenter.userPassword,
                         errorType: $presenter.userPasswordErrorType,
                         isNeedPreferenceButton: false,
                         isHalfTextField: true ,
                         isSecureField: true,
                         textFieldTitle: .PasswordTextField )
            Spacer()
            ACYTextField(textfieldString: $presenter.userPasswordAgain,
                         errorType: $presenter.userPasswordAgainErrorType,
                         isNeedPreferenceButton: false,
                         isHalfTextField: true ,
                         isSecureField: true,
                         textFieldTitle: .AgainPasswordTextField )
        }
        .frame(width: ACYdw(aiachyState, d: 0.9))
    }

    //MARK: RegisterView - Continue Button
    private var continueButton: some View {
        ACYButton(text: ACYTextHelper.ACYGeneralText.ACYappButtonText.ContinueButton.rawValue) {
            presenter.checkValues(aiachy: aiachyState) {
                router.navigate(to: .ascendantSelectionView)
            }
        }
    }
}
