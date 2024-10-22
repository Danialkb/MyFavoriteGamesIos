//
//  ViewController.swift
//  MyFavoritesCollection
//
//  Created by мак on 21.10.2024.
//

import UIKit

struct Game {
    let title: String
    let image: UIImage
    let platform: String
    let releaseYear: Int
}


class ViewController: UIViewController {
    @IBOutlet weak var favoriteGamesCollectionView: UICollectionView!
    
    let favoriteGames: [Game] = [
        Game(title: "CS2", image: UIImage(named: "cs2")!, platform: "Steam", releaseYear: 2023),
        Game(title: "Battlefield 1", image: UIImage(named: "bf1")!, platform: "Steam", releaseYear: 2015),
        Game(title: "Battlefield 5", image: UIImage(named: "bf5")!, platform: "Steam", releaseYear: 2018),
        Game(title: "Metro Exodus", image: UIImage(named: "metro")!, platform: "Steam", releaseYear: 2019),
        Game(title: "GTA V", image: UIImage(named: "gta5")!, platform: "Steam", releaseYear: 2013),
        Game(title: "Days Gone", image: UIImage(named: "daysgone")!, platform: "Steam", releaseYear: 2020),
        Game(title: "Sniper Elite 4", image: UIImage(named: "se4")!, platform: "Steam", releaseYear: 2016),
        Game(title: "Witcher 3", image: UIImage(named: "witcher3")!, platform: "Steam", releaseYear: 2012),
        Game(title: "FarCry 5", image: UIImage(named: "fc5")!, platform: "Steam", releaseYear: 2018),
        Game(title: "Dying Light", image: UIImage(named: "dyinglight")!, platform: "Steam", releaseYear: 2015),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favoriteGamesCollectionView.dataSource = self
        
        let layout = UICollectionViewFlowLayout()
        let itemsPerRow: CGFloat = 2
        
        let availableWidth = favoriteGamesCollectionView.frame.width - 10
        let itemWidth = availableWidth / itemsPerRow
        print(itemWidth)
        layout.itemSize = CGSize(width: itemWidth, height: itemWidth)
        
        favoriteGamesCollectionView.collectionViewLayout = layout
    }
    

}


extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! FavoriteGameCell
        let favoriteGame = favoriteGames[indexPath.row]

        cell.configure(favoriteGame.image, favoriteGame.title, favoriteGame.platform, favoriteGame.releaseYear)
        return cell
    }
}
