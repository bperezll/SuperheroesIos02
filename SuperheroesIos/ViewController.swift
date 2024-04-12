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
    
    /*var items = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48"]*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initializing delegate and dataSource
        SuperheroCollectionView.delegate = self
        SuperheroCollectionView.dataSource = self
        
    }
    
    /*func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }*/

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return superheroes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // Constant variable to access the superhero fields
        let item = superheroes[indexPath.row]
        print(item.name)
        
        // Constant variable creation connected to identifier
        let cell: SuperheroViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SuperheroViewCell
        
        // Accessing the superhero fields
        cell.superheroeNameLabel.text = item.name
        cell.superheroeImageView.image = UIImage(named: item.image.url)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
    }
}

