//
//  DataBaseController.swift
//  Telzhan
//
//  Created by Arnella Tolegen on 10.09.2023.
//

import Foundation
import CoreData

class DataBaseController: ObservableObject {
    let container = NSPersistentContainer(name: "DataBaseModel")
    
    init() {
        container.loadPersistentStores { descripton, error in
            if let error = error {
                print("Core data is failed: \(error.localizedDescription)")
            }
            
        }
    }
}
