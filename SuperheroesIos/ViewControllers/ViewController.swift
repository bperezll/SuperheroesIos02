//
//  ViewController.swift
//  SuperheroesIos
//
//  Created by Mañanas on 11/4/24.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UISearchBarDelegate {
    
    // MARK: Outlet variables
    
    @IBOutlet var SuperheroCollectionView: UICollectionView!
    @IBOutlet var searchBar: UISearchBar!
    
    // MARK: Variables
    
    var superheroes: [Superheroe] = []
    
    // MARK: Life cycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initializing delegate and dataSource
        SuperheroCollectionView.delegate = self
        SuperheroCollectionView.dataSource = self
        
        // Initializing delegate for search bar
        searchBar.delegate = self
    }
    
    // MARK: Number of items to display on Collection View

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return superheroes.count
    }
    
    // MARK: Load superheroes list on Collection View
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // Constant variable to access the superhero fields
        let item = superheroes[indexPath.row]
        print(item.name)
        
        // Constant variable creation connected to identifier
        let cell: SuperheroViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SuperheroViewCell
        
        // Accessing the superhero fields
        cell.superheroeNameLabel.text = item.name
        cell.superheroeImageView.loadFrom(url: item.image.url)
        
        return cell
    }
    
    // MARK: Height, width, columns and spacing between columns
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        // Number of columns
        let columns = 4
        
        // Get width of screen
        let screenWidth = collectionView.frame.width
        
        // Spacing between columns
        let leftSpace = screenWidth - CGFloat(columns - 1) * (collectionView.collectionViewLayout as! UICollectionViewFlowLayout).minimumInteritemSpacing
        
        // Cell width
        let cellWidth = leftSpace / CGFloat(columns)
        
        // Return width and height
        return CGSizeMake(cellWidth, cellWidth / 3 * 4)
    }
    
    // MARK: Navigation to superhero detail page
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
    }
    
    
    // No va
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // If is not null the index path, continue with code
        guard let indexPath = SuperheroCollectionView.indexPathsForSelectedItems else {
            print("No superheroe selected")
            return
        }
        
        // Assign constant variable horoscope to the signs
        ////let superhero = superheroes[indexPath.row]
        
        // Assign constant variable to HoroscopeDetailViewController and segue the destination
        let viewController: DetailViewController = segue.destination as! DetailViewController
        
        ////viewController.superheroe = superhero
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {

    }

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        Task {
            superheroes = try await SuperheroeProvider.searchSuperhero(superheroName: searchText)
            
            DispatchQueue.main.async {
                self.SuperheroCollectionView.reloadData()
            }
        }
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        //self.SuperheroCollectionView.reloadData()
    }
}
