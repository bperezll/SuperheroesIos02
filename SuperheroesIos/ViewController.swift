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
        
        // Constant variable to access the superhero fields
        let item = superheroes[indexPath.row]
        
        // Constant variable creation connected to identifier
        let cell: SuperheroViewCell = SuperheroCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SuperheroViewCell
        
        // Accessing the superhero fields
        cell.superheroeNameLabel.text = item.name
        cell.superheroeImageView.image = UIImage(named: item.image.url)
        
        /*
         
         // calling favoriteRow function from HoroscopeTableViewCell
         cell.favoriteRow(horoscope: item)
         
         */
         return cell
    }
}

