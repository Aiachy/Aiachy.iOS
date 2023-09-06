import Foundation
import StoreKit
import SwiftUI

private protocol HandlerProtocol {
    // Protokol metotları burada olacak
}

class StoreKitManager: ObservableObject {
    
    @Published var acyStoreEntities: [ACYStoreEntity]
    let productIdentifiers = Set(["Oracle.Oracle", "Oracle.Zodiac"])

    init(acyStoreEntities: [ACYStoreEntity] = []) {
        self.acyStoreEntities = acyStoreEntities
        requestProducts()
    }

    func requestProducts() {
        Task {
            do {
                // Product.products(for:) fonksiyonunun nereden geldiğini bilmiyorum,
                // bu yüzden bu kısmı olduğu gibi bırakıyorum.
                let products = try await Product.products(for: productIdentifiers)
                
                print("Ürünler başarıyla alındı: \(products)")
                
                for product in products {
                    let acyStoreEntity = ACYStoreEntity(product: product, productID: product.id, price: product.displayPrice)
                    print("Oluşturulan ACYStoreEntity: \(acyStoreEntity)")
                    acyStoreEntities.append(acyStoreEntity)
                }
                
            } catch {
                print("Ürünler alınırken bir hata oluştu: \(error.localizedDescription)")
            }
        }
    }
}
