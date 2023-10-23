//
//  ExecutiveServerManager.swift
//  Aiachy
//
//  Created by Mert Türedü on 31.07.2023.
//

import Foundation
import FirebaseFirestore
//MARK: ExecutiveServerManager - protocol - UserProtocol
private protocol UserProtocol {
    func setLocalUserZodiacDataVersion()
    func setLocalUserTuneDataVersion()
}
//MARK: ExecutiveServerManager - protocol - ControlProtocol
private protocol ControlProtocol {
    func checkIsSameZodiacVersion(completion: @escaping (Bool) -> ())
    func checkIsSameTuneVersion(completion: @escaping (Bool) -> ())
}
//MARK: ExecutiveServerManager - protocol - ServerProtocol
private protocol ServerProtocol {
    func checkLastExecutiveDataVersion(completion: @escaping (Bool) -> ())
    func updateServerUserZodiacDataVersion()
    func updateServerUserTuneDataVersion()
}
//MARK: ExecutiveServerManager - Manager
class ExecutiveServerManager: ObservableObject {
    
    @Published private var lastZodiacDataVersion: String?
    @Published private var lastTuneDataVersion: String?
    var aiachyState : AiachyState
    private let firestore = Firestore.firestore()
    private let encoder = JSONEncoder()
    
    init(aiachy aiachyState: AiachyState ) {
        self.aiachyState = aiachyState
    }
}
//NextPatchTODO:  2323
//MARK: - ExecutiveServerManager - extension - UserProtocol -
extension ExecutiveServerManager: UserProtocol {
    /// <#Description#>
    /// - Parameter aiachyState: <#aiachyState description#>
    func setLocalUserZodiacDataVersion() {
        aiachyState.user.aiachyInfo.aiachyDataInfo.zodiacDataVersion = self.lastZodiacDataVersion
    }
    /// <#Description#>
    /// - Parameter aiachyState: <#aiachyState description#>
    func setLocalUserTuneDataVersion() {
        aiachyState.user.aiachyInfo.aiachyDataInfo.tuneDataVersion = self.lastTuneDataVersion
    }
}
//MARK: - ExecutiveServerManager - extension - ControlProtocol -
extension ExecutiveServerManager: ControlProtocol {
    
    func checkIsAppReady() {
        
        firestore.collection(ACY_EXECUTIVE_COLLECTION).getDocuments { [self] snap, error in
            if error != nil { print(ACYErrorDataFetching.notWorkingServer.printDataFetching("ExecutiveServerManager")) }
            
            guard let docs = snap?.documents else { return }
            for doc in docs {
                if doc.documentID.description == "aiachyInfo" {
                    let isAiachyReady = doc.get("isAiachyReady") as? Bool ?? false
                    aiachyState.isAiachyReady = isAiachyReady
                }
            }
        }
    }
    
    /// <#Description#>
    /// - Parameters:
    ///   - aiachyState: <#aiachyState description#>
    ///   - completion: <#completion description#>
    func checkIsSameZodiacVersion(completion: @escaping (Bool) -> ()) {
        checkLastExecutiveDataVersion { [self] isChecked in
            guard isChecked else { return }
            let currentZodiacDataVersion = aiachyState.user.aiachyInfo.aiachyDataInfo.wrappedZodiacDataVersion
            guard currentZodiacDataVersion == lastZodiacDataVersion else { completion(false); return }
            completion(true)
        }
    }
    /// <#Description#>
    /// - Parameters:
    ///   - aiachyState: <#aiachyState description#>
    ///   - completion: <#completion description#>
    func checkIsSameTuneVersion(completion: @escaping (Bool) -> ()) {
        checkLastExecutiveDataVersion { [self] isChecked in
            guard isChecked else { return }
            let currentZodiacDataVersion = aiachyState.user.aiachyInfo.aiachyDataInfo.wrappedTuneDataVersion
            guard currentZodiacDataVersion == lastTuneDataVersion else { completion(false); return }
            completion(true)
        }
    }
}
//MARK: - ExecutiveServerManager - extension - ServerProtocol -
extension ExecutiveServerManager: ServerProtocol {
    /// <#Description#>
    func checkLastExecutiveDataVersion(completion: @escaping (Bool) -> ()) {
        firestore.collection(ACY_EXECUTIVE_COLLECTION).document(ACY_DATA_INFO_PATH).getDocument { [self] snap, error in
            if error != nil {completion(false); print(ACYErrorDataFetching.notWorkingServer.printDataFetching("AiachyExecutiveServerManager")) }
            guard let doc = snap else { completion(false); return }
            lastTuneDataVersion = doc.get("tuneDataVersion") as? String
            lastZodiacDataVersion = doc.get("zodiacDataVersion") as? String
            completion(true)
        }
    }
    /// <#Description#>
    func updateServerUserZodiacDataVersion() {
        checkLastExecutiveDataVersion { [self] isChecked in
            guard isChecked else { return }
            
            let info = aiachyState.user.aiachyInfo
            
            let aiachyInfo = AiachyInfo(version: info.wrappedVersion,
                                        theme: info.wrappedTheme,
                                        aiachyLanguageInfo: info.aiachyLanguageInfo,
                                        aiachyDataInfo: AiachyDataInfo(zodiacDataVersion: lastZodiacDataVersion,
                                                                       tuneDataVersion: info.aiachyDataInfo.wrappedTuneDataVersion),
                                        aiachyRemoteInfo: info.aiachyRemoteInfo)
            
            let encoder = JSONEncoder()
            if let encodedData = try? encoder.encode(aiachyInfo) {
                do {
                    if let jsonObject = try JSONSerialization.jsonObject(with: encodedData, options: []) as? [String: Any] {
                        let userID: String = aiachyState.user.userInfo.wrappedId
                        /// firestore process
                        firestore.collection(ACY_USERS_COLLECTION).document(userID).updateData(["aiachyInfo": jsonObject])
                    }
                } catch {
                    print("Failed to convert encodedData to JSON object:", error)
                }
            }
        }
    }
    /// <#Description#>
    func updateServerUserTuneDataVersion() {
        checkLastExecutiveDataVersion { [self] isChecked in
            guard isChecked else { return }
            /// value
            let info = aiachyState.user.aiachyInfo
            
            let aiachyInfo = AiachyInfo(version: info.wrappedVersion,
                                        theme: info.wrappedTheme,
                                        aiachyLanguageInfo: info.aiachyLanguageInfo,
                                        aiachyDataInfo: AiachyDataInfo(zodiacDataVersion: info.aiachyDataInfo.wrappedZodiacDataVersion,
                                                                       tuneDataVersion: lastTuneDataVersion),
                                        aiachyRemoteInfo: info.aiachyRemoteInfo)
            
            let encoder = JSONEncoder()
            if let encodedData = try? encoder.encode(aiachyInfo) {
                do {
                    if let jsonObject = try JSONSerialization.jsonObject(with: encodedData, options: []) as? [String: Any] {
                        let userID: String = aiachyState.user.userInfo.wrappedId
                        /// firestore process
                        firestore.collection(ACY_USERS_COLLECTION).document(userID).updateData(["aiachyInfo": jsonObject])
                    }
                } catch {
                    print("Failed to convert encodedData to JSON object:", error)
                }
            }
        }
    }

}
