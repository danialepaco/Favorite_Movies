//
//  MovieCell.swift
//  Favorite_Movies
//
//  Created by Daniel Parra on 6/18/16.
//  Copyright © 2016 Daniel Parra. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    @IBOutlet weak var movieImg: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        movieImg.layer.cornerRadius = 10.0
        movieImg.clipsToBounds = true
        
    }
    
    func configureCell(movie: Movie) {
        movieTitle.text = movie.tittle
        movieDescription.text = movie.descrip
        movieImg.image = movie.getImage()
        movie.aux = movie.link
    }
}
