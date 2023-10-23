//
//  UserServerManager.swift
//  Aiachy
//
//  Created by Mert Türedü on 15.05.2023.
//

import SwiftUI
import FirebaseFirestore
import FirebaseAuth
//MARK: UserServerManager - protocol - HandlerProtocol -
private protocol HandlerProtocol {
    func makeUserFrom(document: DocumentSnapshot) -> User
}
//MARK: UserServerManager - protocol - AuthServerProtocol -
private protocol AuthServerProtocol {
    func createUser(user: User)
    func fetchUserWithId(id: String, completion: @escaping (Result<User,ACYErrorDataFetching>) -> () )
    func checkLoginWithEmail(userLogin userLoginInfo: UserLoginInfo, completion: @escaping (Result<User, ACYErrorAuth>) -> Void)
    
}
//MARK: UserServerManager - protocol - ControlServerProtocol -
private protocol ControlServerProtocol {
    func controlUserInformationOnServer(dataField: String, whereField: String, userInformation: String, completion: @escaping (Bool) -> Void)
}
//MARK: UserServerManager - protocol - UpdateServerProtocol -
private protocol UpdateServerProtocol {
    
}
//MARK: UserServerManager - Manager -
class UserServerManager {
    
    let aiachyState: AiachyState
    private let firestore = Firestore.firestore()
    private let decoder = JSONDecoder()
    private let encoder = JSONEncoder()
    
    init(aiachy aiachyState: AiachyState )
    {
        self.aiachyState = aiachyState
    }
}
//MARK: UserServerManager - extension - HandlerProtocol -
extension UserServerManager: HandlerProtocol {
    // Helper function to convert Firestore document to User
    func makeUserFrom(document: DocumentSnapshot) -> User {
        
        guard let data = try? JSONSerialization.data(withJSONObject: document.data()!, options: []),
              let user = try? JSONDecoder().decode(User.self, from: data) else { return User()}
        return user
    }
}
//MARK: UserServerManager - extension - AuthServerProtocol -
extension UserServerManager: AuthServerProtocol {
    /// Creates a new user.
    /// - Parameter user: It is for uploading the values saved in the registration process to the server.
    func createUser(user: User) {
        guard let checkedID = user.userInfo.id else { return }
        do {
            let data = try encoder.encode(user)
            let dictionary = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any]
            
            firestore.collection(ACY_USERS_COLLECTION).document(checkedID).setData(dictionary!)
        } catch {
            print(ACYErrorUserInfo.userCantCreateUser.printUserInfo("AuthServerManager"))
        }
    }
    /// With the ID, the user's data is retrieved and the User formation is converted.
    /// - Parameters:
    ///   - id: The id saved by the cache will be written here.
    ///   - completion: Allows conversion to User formation or getting error.
    func fetchUserWithId(id: String, completion: @escaping (Result<User,ACYErrorDataFetching>) -> () ) {
        firestore.collection(ACY_USERS_COLLECTION).document(id).getDocument { [weak self] snap, error in
            ///error
            if error != nil {
                completion(.failure(ACYErrorDataFetching.notWorkingServer))
            }
            ///doc controlled
            guard let doc = snap else { completion(.failure(ACYErrorDataFetching.notWorkingServer)); return }
            guard doc.documentID == id else {completion(.failure(ACYErrorDataFetching.cantFetchUser)); return }
            /// decode
            let jsonUserData = try! JSONSerialization.data(withJSONObject: doc.data()!,options: .prettyPrinted)
            let decodedUser = try! self!.decoder.decode(User.self, from: jsonUserData)
            completion(.success(decodedUser))
        }
    }
    /// To login by mail.
    /// - Parameters:
    ///   - userLoginInfo: To query the user's mail and password on the server.
    ///   - completionHandler: True if user found else false.
    func checkLoginWithEmail(userLogin userLoginInfo: UserLoginInfo, completion: @escaping (Result<User, ACYErrorAuth>) -> Void) {
        
        let email = userLoginInfo.email
        let password = userLoginInfo.password
        
        firestore.collection(ACY_USERS_COLLECTION).getDocuments { [self] snap, error in
            /// error
            if error != nil {
                completion(.failure(.notWorkingServer))
            }
            /// doc controlled
            guard let docs = snap?.documents else { completion(.failure(.notWorkingServer)); return }
            
            for doc in docs {
                let documentary = doc.data()

                guard let userLoginInfo = documentary["userLoginInfo"] as? [String:Any] else {
                    completion(.failure(.notWorkingServer))
                    return
                }
                
                guard let checkedMail = userLoginInfo["email"] as? String else {
                    completion(.failure(.notFoundUser))
                    return

                }
                guard 
                    var checkedPassword = userLoginInfo["password"] as? String else {
                    completion(.failure(.passwordNotSame))
                    return
                }
                
                do {
                    let jsonData = try JSONSerialization.data(withJSONObject: documentary, options: [])
                    let decodedUserData = try decoder.decode(User.self, from: jsonData)
                    completion(.success(decodedUserData))
                } catch {
                    completion(.failure(.cannotBeExplained))
                }
            }
            
        }
        
    }


}
//MARK: UserServerManager - extension - ControlServerProtocol -
extension UserServerManager: ControlServerProtocol {
    /// To get the desired user value.
    /// - Parameters:
    ///   - dataField: The parent name of the value.
    ///   - whereField: The value itself.
    ///   - userInformation: The value to compare.
    ///   - completion: It will return true if the value is found, false otherwise.
    func controlUserInformationOnServer(dataField: String, whereField: String, userInformation: String, completion: @escaping (Bool) -> Void) {
        firestore.collection(ACY_USERS_COLLECTION).getDocuments { snap, error in
            /// error
            if error != nil { print(ACYErrorDataFetching.notWorkingServer.printDataFetching("AuthServerManager")); completion(false) }
            /// cheking snap
            guard let docs = snap?.documents else { return }
            /// for doc
            for doc in docs {
                
                let docData = doc.data()
                let dataFieldValue = docData[dataField] as? [String: Any]
                guard let checkedDataField = dataFieldValue else { continue }
                let whereFieldValue = checkedDataField[whereField] as? String ?? ""
                if whereFieldValue == userInformation {
                    completion(true)
                } else {
                    completion(false)
                }
            }
        }
    }
}
//MARK: UserServerManager - extension - UpdateServerProtocol -
extension UserServerManager: UpdateServerProtocol {
    
    func updateUserInformationOnServer() {
        let user = aiachyState.user
        
        do {
            
            let encodedData = try encoder.encode(user)
            guard let jsonData = try JSONSerialization.jsonObject(with: encodedData, options: []) as? [String: Any] else { return }
            firestore.collection(ACY_USERS_COLLECTION).document(user.userInfo.id!).setData(jsonData, merge: true)
            
        } catch {
            print("")
        }
    }
}
