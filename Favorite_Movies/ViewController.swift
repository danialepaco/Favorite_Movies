//
//  ViewController.swift
//  Favorite_Movies
//
//  Created by Daniel Parra on 6/17/16.
//  Copyright © 2016 Daniel Parra. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var movieTittle: UITextField!
    @IBOutlet weak var movieDescription: UITextField!
    @IBOutlet weak var movieLink: UITextField!
    @IBOutlet weak var movieImage: UIImageView!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        movieImage.layer.cornerRadius = 100.0
        movieImage.clipsToBounds = true
        
        
        movieTittle.textColor = UIColor.whiteColor()
        movieDescription.textColor = UIColor.whiteColor()
        movieLink.textColor = UIColor.whiteColor()        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        movieImage.image = image
    }
    
    @IBAction func addBtn(sender: AnyObject) {
        if let tittle = movieTittle.text where title != "" {
            
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Movie", inManagedObjectContext: context)!
            let movie = Movie(entity: entity, insertIntoManagedObjectContext: context)
            
            movie.tittle = tittle
            movie.descrip = movieDescription.text
            movie.link = movieLink.text
            movie.setAnImage(movieImage.image!)
            
            context.insertObject(movie)
            
            do {
                try context.save()
            } catch {
                print("Sorry dude")
            }
            self.navigationController?.popViewControllerAnimated(true)
        }
    }
    @IBAction func addImage(sender: AnyObject!) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }
}

