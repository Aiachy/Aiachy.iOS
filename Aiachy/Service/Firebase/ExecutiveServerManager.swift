//
//  ExecutiveServerManager.swift
//  Aiachy
//
//  Created by Mert Türedü on 31.07.2023.
//

import Foundation
import FirebaseFirestore

class ExecutiveServerManager: ObservableObject {
    
    @Published var lastVersionZodiacData: String?
    private let firestore = Firestore.firestore()
    
    init() {
        
    }
    /// Zodiac checks the latest version of the data and watches whether it is updated accordingly.
    /// - Parameters:
    ///   - aiachyInfo: It looks at the user's data and shows that an update is required.
    ///   - completion: If true, no data update is required, if not, it need will updates.
    func checkZodiacDataVersion(aiachy aiachyState: AiachyState, completion: @escaping (Bool) -> ()) {
        
        let dataVersion = aiachyState.user.aiachyInfo.wrappedZodiacDataVersion
        
        firestore.collection(ACY_EXECUTIVE_COLLECTION).document(ACY_ZODIAC_INFO_PATH).getDocument { snap, error in
            /// error
            if error != nil { print(ACYErrorDataFetching.notWorkingServer.printDataFetching("AiachyExecutiveServerManager")) }
            /// doc checling
            guard let doc = snap else { return }
            /// try get zodiac version
            let checkedZodiacDataVersion = doc.get("zodiacDataVersion") as! String
            /// value not same
            guard dataVersion == checkedZodiacDataVersion else {
                self.lastVersionZodiacData = checkedZodiacDataVersion
                print(ACYErrorDataFetching.notSameZodiacDataVersion.printDataFetching("AiachyExecutiveServerManager"))
                completion(false)
                return }
            /// value is same
            completion(true)
            print(ACYPrintDataFetching.zodiacDataVersionSame.printDataFetching() + "Current Version is \(dataVersion)")
        }
    }
    /// User Zodiac Data Version will be updated.
    /// - Parameter aiachyState: That mean getting ID.
    func updateUserZodiacDataVersion(aiachy aiachyState: AiachyState) {
        /// checking
        guard lastVersionZodiacData != nil else { return }
        /// value
        let userID = aiachyState.user.userInfo.wrappedId
        let lastVersionZodiacData: [String: Any] = ["AiachyInfo": lastVersionZodiacData!]
        /// firestore process
        firestore.collection(ACY_USERS_COLLECTION).document(userID).setData(lastVersionZodiacData, merge: true)
    }
}
