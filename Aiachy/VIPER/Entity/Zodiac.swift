//
//  Zodiac.swift
//  Aiachy
//
//  Created by Mert Türedü on 19.07.2023.
//

import Foundation

//MARK: Zodiac
struct Zodiac: Codable {
    var date: Date
    var zodiac: Int
    var dailyComment: String
    var dailySpecialComment: String
    var zodiacDataVersion: String
    var compatibilityZodiacs: [CompatibilityZodiacs]
    var zodiacStatus: ZodiacStatus
}

//MARK: Zodiac - CompatibilityZodiacs
struct CompatibilityZodiacs: Codable {
    var zodiac: Int?
    var comment: String?
}

//MARK: Zodiac - ZodiacStatus
struct ZodiacStatus: Codable {
    var universeStatus = UniverseStatus()
    var enlightenmentStatus = EnlightenmentStatus()
    var touchStatus = TouchStatus()
    var loveStatus = LoveStatus()
    var strengthStatus = StrengthStatus()
    var creativeStatus = CreativeStatus()
    var foundationStatus = FoundationStatus()

    
}
//ZodiacStatus - UniverseStatus
struct UniverseStatus: Codable {
    var rate: Int?
    var statusComment: String?
}
//ZodiacStatus - EnlightenmentStatus
struct EnlightenmentStatus: Codable {
    var rate: Int?
    var statusComment: String?
}
//ZodiacStatus - TouchStatus
struct TouchStatus: Codable {
    var rate: Int?
    var statusComment: String?
}
//ZodiacStatus - LoveStatus
struct LoveStatus: Codable {
    var rate: Int?
    var statusComment: String?
}
//ZodiacStatus - StrengthStatus
struct StrengthStatus: Codable {
    var rate: Int?
    var statusComment: String?
}
//ZodiacStatus - FoundationStatus
struct CreativeStatus: Codable {
    var rate: Int?
    var statusComment: String?
}
//ZodiacStatus - FoundationStatus
struct FoundationStatus: Codable {
    var rate: Int?
    var statusComment: String?
}
