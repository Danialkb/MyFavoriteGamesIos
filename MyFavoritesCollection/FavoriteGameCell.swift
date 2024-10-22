//
//  FavoriteGameCell.swift
//  MyFavoritesCollection
//
//  Created by мак on 21.10.2024.
//

import UIKit

class FavoriteGameCell: UICollectionViewCell {
    @IBOutlet weak var gameImageView: UIImageView!
    
    @IBOutlet weak var gameTitleLabel: UILabel!
    
    @IBOutlet weak var gamePlatformLabel: UILabel!
    
    @IBOutlet weak var gameReleaseYearLabel: UILabel!
    
    func configure(_ image: UIImage, _ gameTitle: String, _ gamePlatform: String, _ gameReleaseYear: Int) {
        gameImageView.image = image
        gameTitleLabel.text = gameTitle
        gamePlatformLabel.text = gamePlatform
        gameReleaseYearLabel.text = String(gameReleaseYear)
    }

}
