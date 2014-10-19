//
//  Car.swift
//  CoreDataExample
//
//  Created by Rachid Calazans on 10/19/14.
//  Copyright (c) 2014 Rachid Calazans. All rights reserved.
//

import UIKit
import CoreData

class Car: NSManagedObject {
   
    @NSManaged var carName: String!
    @NSManaged var carColor: String!
    
    
    func validate() -> NSDictionary {
        var errors:NSMutableDictionary = [:]
        
        if (carName == nil || carName == "") {
            errors["carName"] = "Name is require"
        }
        
        return errors
    }
}
