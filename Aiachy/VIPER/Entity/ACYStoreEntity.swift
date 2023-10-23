//
//  ACYStoreEntity.swift
//  Aiachy
//
//  Created by Mert Türedü on 25.08.2023.
//

import StoreKit

struct ACYStoreEntity {
    var product: Product?
    var productID: String?
    var price: String?
    
    func makeSubscriptionMethod() -> String {
        if productID == "Oracle.Oracle" || productID == "Oracle.Occult" {
            return "Monthly Subscription"
        } else {
            return ""
        }
    }
}
