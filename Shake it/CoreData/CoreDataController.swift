//
//  RecipeModel.swift
//  Shake it
//
//  Created by Aubin Ebano on 18/09/2023.
//

import SwiftUI
import CoreData

class CoreDataController {
    
    static let sharedInstance = CoreDataController()
    
    let container: NSPersistentContainer
    
    private init() {
        container = NSPersistentContainer(name: "ShakeitDataModel")
        container.loadPersistentStores { (description, error) in
            if let error = error {
                print("Error while loading core data \(error)")
            }
        }
    }
    
}
