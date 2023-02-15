//
//  MovieCollectionViewCell.swift
//  Homework 17
//
//  Created by valeri mekhashishvili on 2/2/23.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {

    @IBOutlet private weak var movieImageView: UIImageView!
    
    @IBOutlet  private weak var titleLabel: UILabel!
    
    func setup(with movie: Movie) {
        movieImageView.image = UIImage(named: movie.image )
        titleLabel.text = movie.title
    }
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }

}
