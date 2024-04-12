//
//  ViewController.swift
//  SuperheroesIos
//
//  Created by Mañanas on 11/4/24.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UISearchBarDelegate {
    

    @IBOutlet var SuperheroCollectionView: UICollectionView!
    @IBOutlet var searchBar: UISearchBar!
    
    var superheroes = SuperheroeProvider.getSuperheroes()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initializing delegate and dataSource
        SuperheroCollectionView.delegate = self
        SuperheroCollectionView.dataSource = self
        
        searchBar.delegate = self
    }

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
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar)

    {

    }

    

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)

    {

    }
}
