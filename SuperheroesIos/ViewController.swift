//
//  ViewController.swift
//  SuperheroesIos
//
//  Created by Mañanas on 11/4/24.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    

    @IBOutlet var SuperheroCollectionView: UICollectionView!
    
    var superheroes = SuperheroeProvider.getSuperheroes()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initializing delegate and dataSource
        SuperheroCollectionView.delegate = self
        SuperheroCollectionView.dataSource = self
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return superheroes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let item = superheroes[indexPath.row]
        
        //let cell:
        
        /*
         
         // Constant variable to access the horoscope sign fields
         let item = horoscopeSigns[indexPath.row]
         
         // Constant variable creation connected to identifier
         let cell: HoroscopeTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HoroscopeTableViewCell
         
         // Accessing the horoscope sign fields
         cell.titleLabel.text = item.name
         cell.subtitleLabel.text = item.date
         cell.signImageView.image = UIImage(named: item.image)
         
         // calling favoriteRow function from HoroscopeTableViewCell
         cell.favoriteRow(horoscope: item)
         
         return cell
         
         */
         
    }

}

