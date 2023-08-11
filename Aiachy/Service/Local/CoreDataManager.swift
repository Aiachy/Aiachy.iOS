//
//  CoreDataManager.swift
//  Aiachy
//
//  Created by Mert Türedü on 27.07.2023.
//

import Foundation
import CoreData
//MARK: CoreDataManager - protocol - CoreDataManagerZodiacControlProtocol
private protocol CoreDataManagerZodiacControlProtocol {
    func setCoreZodiacData(zodiac: Zodiac)
}
//MARK: CoreDataManager - protocol - CoreDataManagerHandlerProtocol
private protocol CoreDataManagerHandlerProtocol {
    func saveCoreData()
    func deleteAllData()
}
//MARK: CoreDataManager - protocol - CoreDataManagerHelperProtocol
private protocol CoreDataManagerHelperProtocol  {
    func setCoreDataDate(day: Int) -> String
}
//MARK: CoreDataManager - Manager
class CoreDataManager: ObservableObject {
    
    @Published private var zodiacEntityStash: [ZodiacEntity] = []
    private let container: NSPersistentContainer
    private let fetchRequest = NSFetchRequest<ZodiacEntity>(entityName: "ZodiacEntity")
    private let context: NSManagedObjectContext
    private let encoder = JSONEncoder()
    
    init() {
        self.container = NSPersistentContainer(name: "AiachyData")
        self.container.loadPersistentStores { description, error in
            if let error = error {
                print(error.localizedDescription)
            } else {
                
            }
        }
        context = container.viewContext
    }
    /// core data data processing and putting results
    /// - Parameters:
    ///   - zodiac: zodiac typically set to retrieve data
    func makeCoreDataManaging(zodiac: Zodiac) {
        /// delete and setting new to  core data
        deleteAllData()
        setCoreZodiacData(zodiac: zodiac)
    }
    /// checking control data
    /// - Returns: if it is true
    func controlCoreData() -> Bool {
        return false
    }
    /// get all zodiac datas
    func getZodiacData() {
        /// coredata entity names
        let sort = NSSortDescriptor(keyPath: \ZodiacEntity.zodiac, ascending: true)
        fetchRequest.sortDescriptors = [sort]
        /// filter with date fatching
        let yesterday = NSPredicate(format: "Date == %@", setCoreDataDate(day: -1))
        let today = NSPredicate(format: "Date == %@", setCoreDataDate(day: 0))
        let tomorrow = NSPredicate(format: "Date == %@", setCoreDataDate(day: 1))
        let andCompoundPredicate = NSCompoundPredicate(andPredicateWithSubpredicates: [yesterday, today, tomorrow])
        fetchRequest.predicate = andCompoundPredicate
        /// docatch
        do {
            /// fetcking
            self.zodiacEntityStash = try context.fetch(fetchRequest)
            print(ACYPrintAppInfo.ableToGetDataFromCoreData.printAppInfo())
            /// save
            saveCoreData()
        } catch {
            //// error
            print(ACYErrorAppInfo.didntGetFromCoreData.printAppInfo("CoreDataManager"))
        }
    }
    /// To check if there is data in the data
    /// - Returns: If it returns true, it means there is data, if it returns false, it means no data.
    func checkIfDataExists() -> Bool {
        do {
            let result = try context.fetch(fetchRequest)
            return result.count > 0
        } catch {
            print(ACYErrorAppInfo.unknownErrorOnCoreData.printAppInfo("CoreDataManager"))
        }
        return false
    }
}
//MARK: CoreDataManager - extension - CoreDataManagerZodiacControlProtocol
extension CoreDataManager: CoreDataManagerZodiacControlProtocol {
    /// will setting zodiac datas to Core Data .
    /// - Parameter zodiac: type zodaic datas.
    fileprivate func setCoreZodiacData(zodiac: Zodiac) {
        let coreData = ZodiacEntity(context: context)
        do {
            coreData.date = zodiac.date
            coreData.zodiac = Int16(zodiac.zodiac)
            coreData.dailyComment = zodiac.dailyComment
            coreData.dailySpecialComment = zodiac.dailySpecialComment
            coreData.zodiacDataVersion = zodiac.zodiacDataVersion
            coreData.compatibilityZodiacs = try encoder.encode(zodiac.compatibilityZodiacs)
            coreData.zodiacStatus = try encoder.encode(zodiac.zodiacStatus)
            saveCoreData()
            print(ACYPrintAppInfo.ableToWriteToCoreData.printAppInfo())
        } catch {
            print(ACYErrorAppInfo.didntWriteToCoreData.printAppInfo("CoreDataManager"))
        }
    }
}
//MARK: CoreDataManager - extension - CoreDataManagerHandlerProtocol
extension CoreDataManager: CoreDataManagerHandlerProtocol {
    /// Core data to save data.
    fileprivate func saveCoreData() {
        do {
            /// saving
            try context.save()
            print(ACYPrintAppInfo.ableToWriteToCoreData.printAppInfo())
        } catch {
            /// error
            print(ACYErrorAppInfo.didntWriteToCoreData.printAppInfo("CoreDataManager"))
        }
    }
    /// Delete all data on core data.
    fileprivate func deleteAllData() {
        /// request
        let fetchRequest: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "ZodiacEntity")
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
        
        do {
            /// dalete & saved
            try context.execute(deleteRequest)
            saveCoreData()
        } catch {
            /// error
            print(ACYErrorAppInfo.didntDeleteCoreData.printAppInfo("CoreDataManager"))
        }
    }
}
//MARK: CoreDataManager - extension - CoreDataManagerHelperProtocol
extension CoreDataManager: CoreDataManagerHelperProtocol {
    /// We take the Present time and take the time I want.
    /// - Parameter day: It is to find out how many days before or after the desired day is.
    /// - Returns: The specified date returns as time.
    fileprivate func setCoreDataDate(day: Int) -> String {
        /// values
        let calendar = Calendar.current
        let dateFormatter = DateFormatter()
        let today = Date()
        /// setted date
        let settedDate = calendar.date(byAdding: .day, value: day, to: today)
        /// checking
        guard let newDate = settedDate else { return "0"}
        /// formating
        dateFormatter.dateFormat = "dd-MM-yyyy"
        let dateString = dateFormatter.string(from: newDate)
        /// return object
        return dateString
    }
}
