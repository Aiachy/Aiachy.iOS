import Foundation
import StoreKit

private protocol HandlerProtocol {
    
}

public enum StoreError: Error {
    case failedVerification
}

class StoreKitManager: ObservableObject {
    
    @Published var acyStoreEntities: [ACYStoreEntity]
    var aiachyState: AiachyState
    let productIdentifiers = Set(["Oracle.Oracle", "Oracle.Occult"])
    
    init(acyStoreEntities: [ACYStoreEntity] = [],
         aiachy aiachyState: AiachyState) {
        self.acyStoreEntities = acyStoreEntities
        self.aiachyState = aiachyState
        
    }
    
    func purchase(_ product: Product) async throws -> Transaction? {
        let result = try await product.purchase()
        
        switch result {
        case .success(let verification):
            //Check whether the transaction is verified. If it isn't,
            //this function rethrows the verification error.
            let transaction = try checkVerified(verification)
            
            //The transaction is verified. Deliver content to the user.
            await updateCustomerProductStatus()
            
            //Always finish a transaction.
            await transaction.finish()
            
            return transaction
        case .userCancelled, .pending:
            return nil
        default:
            return nil
        }
    }
    
    func checkVerified<T>(_ result: VerificationResult<T>) throws -> T {
        
        switch result {
        case .unverified(_, _):
            throw StoreError.failedVerification
        case .verified(let signedType):
            return signedType
        }
        
    }
    
    // update the customers products
    @MainActor
    func updateCustomerProductStatus() async {
        var purchasedCourses: Product? = nil
        
        //iterate through all the user's purchased products
        for await result in Transaction.currentEntitlements {
            do {
                //again check if transaction is verified
                let transaction = try checkVerified(result)
                let acyAiachyRepo = aiachyState.acyAiachyRepo
                // since we only have one type of producttype - .nonconsumables -- check if any storeProducts matches the transaction.productID then add to the purchasedCourses
                if let course = acyAiachyRepo.acyStoreEntity?.first(where: { $0.product?.id == transaction.productID}) {
                    purchasedCourses = course.product
                }
                
            } catch {
                //storekit has a transaction that fails verification, don't delvier content to the user
                print("Transaction failed verification")
            }
            
            self.aiachyState.user.userOracle.isOracled = true
            
        }
    }
    
}

extension StoreKitManager {
    func requestProducts() async {
        do {
            let products = try await Product.products(for: productIdentifiers)
            DispatchQueue.main.async {
                for product in products {
                    let acyStoreEntity = ACYStoreEntity(product: product, productID: product.id, price: product.displayPrice)
                    self.acyStoreEntities.append(acyStoreEntity)
                    print(ACYPrintDataFetching.storeKitProductsFetching.printDataFetching(data: product.id))
                }
            }
        } catch {
            
        }
    }
    
    
    
}

