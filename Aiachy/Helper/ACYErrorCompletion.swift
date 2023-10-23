//
//  ACYErrorCompletion.swift
//  Aiachy
//
//  Created by Mert Türedü on 6.07.2023.
//

import Foundation

typealias ACYErrorAppInfo = ACYErrorCompletion.AppInfoErrorPrint
typealias ACYErrorUserInfo = ACYErrorCompletion.UserInfoErrorPrint
typealias ACYErrorDataFetching = ACYErrorCompletion.DataFetchingErrorPrint
typealias ACYErrorAuth = ACYErrorCompletion.AuthErrorPrint

struct ACYErrorCompletion {
    /// App Info Error
    enum AppInfoErrorPrint: Error {
        case ethernetConnectionNotFound
        case didntWriteToCoreData
        case didntGetFromCoreData
        case didntDeleteCoreData
        case unknownErrorOnCoreData
        func printAppInfo(_ viewName: String) -> String {
            switch self {
            case .ethernetConnectionNotFound:
                return "AiachySystemError view: \(viewName): Ethernet connection is not found."
            case .didntWriteToCoreData:
                return "AiachySystemError view: \(viewName): The data from the server could not be transferred to the Core Data database."
            case .didntGetFromCoreData:
                return "AiachySystemError view: \(viewName): Unfortunately, the data could not be retrieved from the core data database."
            case .didntDeleteCoreData:
                return "AiachySystemError view: \(viewName): Could not delete Core Data data."
            case .unknownErrorOnCoreData:
                return "AiachySystemError view: \(viewName): Cant be detected error."
            }
        }
    }
    /// User Info Error
    enum UserInfoErrorPrint: Error {
        case userCouldNotLoginSuccessfully
        case userCantCreateUser
        case userMailUsedBefore
        case userIdNotFound
        func printUserInfo(_ viewName: String) -> String {
            switch self {
            case .userCouldNotLoginSuccessfully:
                return "AiachySystemError view: \(viewName): Unfortunately, the user could not log in."
            case .userCantCreateUser:
                return "AiachySystemError view: \(viewName): User didnt created."
            case .userMailUsedBefore:
                return "AiachySystemError view: \(viewName): User mail before used."
            case .userIdNotFound:
                return "AiachySystemError view: \(viewName): User id not found."
            }
        }
    }
    enum AuthErrorPrint: Error {
        case notWorkingServer
        case notFoundUser
        case passwordNotSame
        case cannotBeExplained
        func printAuthError(_ viewName: String) -> String {
            switch self {
            case .notWorkingServer:
                return "AiachySystemError view: \(viewName): Server not working."
            case .notFoundUser:
                return "AiachySystemError view: \(viewName): User not found on our servers."
            case .passwordNotSame:
                return "AiachySystemError view: \(viewName): Password not same."
            case .cannotBeExplained:
                return "AiachySystemError view: \(viewName): Cannot be explained."
            }
        }
    }
    /// Data fetching error
    enum DataFetchingErrorPrint: Error {
        case cantFetchUser
        case cantFetcingZodiacData
        case cantFetchZodiacDataVersion
        case notSameZodiacDataVersion
        case notWorkingServer
        case willErrorZodiacDataVersion
        case noZodiacLeftToBring
        func printDataFetching(_ viewName: String) -> String {
            switch self {

            case .cantFetchUser:
                return "AiachySystemError view: \(viewName): The user's information could not be pulled from our servers."
            case .cantFetcingZodiacData:
                return "AiachySystemError view: \(viewName): The zodiac daily data information could not be pulled from our servers."
            case .cantFetchZodiacDataVersion:
                return "AiachySystemError view: \(viewName): The zodiac data version could not be fetch from our servers."
            case .notSameZodiacDataVersion:
                return "AiachySystemError view: \(viewName): Daily zodiac data version is not same need update."
            case .notWorkingServer:
                return "AiachySystemError view: \(viewName): Server not working."
            case .willErrorZodiacDataVersion:
                return "AiachySystemError view: \(viewName): An error may occur in the Zodiac data version.."
            case .noZodiacLeftToBring:
                return "AiachySystemError view: \(viewName): Server not working."
            }
        }
    }
}
