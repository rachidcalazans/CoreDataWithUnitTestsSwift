//
//  CarTests.swift
//  CoreDataExample
//
//  Created by Rachid Calazans on 10/19/14.
//  Copyright (c) 2014 Rachid Calazans. All rights reserved.
//

import UIKit
import CoreData
import XCTest

class CarTests: XCTestCase {
   
    let coreDataHelper = TestCoreDataHelper()
    
    func testNameShouldBeRequired() {
        var entity: NSEntityDescription = NSEntityDescription.entityForName("Car", inManagedObjectContext: coreDataHelper.managedObjectContext!)!
        
        let car = Car(entity: entity, insertIntoManagedObjectContext: coreDataHelper.managedObjectContext!)
        
        var errors: NSDictionary = car.validate()
        
        XCTAssertEqual(1, errors.count, "Must conatin 1 error when name is empty")
        XCTAssertTrue((errors.valueForKey("carName") != nil), "Must contain :carName error when name is empty")
    }
    
}
