//
//  Movie+CoreDataProperties.swift
//  Favorite_Movies
//
//  Created by Daniel Parra on 6/18/16.
//  Copyright © 2016 Daniel Parra. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movie {

    @NSManaged var image: NSData?
    @NSManaged var tittle: String?
    @NSManaged var descrip: String?
    @NSManaged var link: String?

}
