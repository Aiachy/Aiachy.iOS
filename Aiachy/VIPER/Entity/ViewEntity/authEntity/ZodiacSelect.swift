//
//  ZodiacSelect.swift
//  Aiachy
//
//  Created by Mert Türedü on 19.07.2023.
//

import Foundation

struct ZodiacSelect: Identifiable {
    var id: Int
    var zodiacImage: ImageHelper.ZodiacCompletion.zodiac
    var selectedZodiacImage: ImageHelper.ZodiacCompletion.zodiac
    var zodiacName: TextHelper.ZodiacCompletion.zodiac
    var zodiacShortedDate: TextHelper.ZodiacCompletion.zodiac
}
