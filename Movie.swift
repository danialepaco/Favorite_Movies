//
//  Movie.swift
//  Favorite_Movies
//
//  Created by Daniel Parra on 6/18/16.
//  Copyright © 2016 Daniel Parra. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Movie: NSManagedObject {
    
    var aux: String?
    
    func setAnImage(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getImage() -> UIImage {
        let img = UIImage(data: self.image!)
        return img!
    }
}
