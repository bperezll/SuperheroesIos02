//
//  ImageLoadFrom.swift
//  SuperheroesIos
//
//  Created by Mañanas on 15/4/24.
//

import UIKit

// MARK: Load image with the url

extension UIImageView {
    
    func loadFrom(url: URL) {
        
        DispatchQueue.global().async { [weak self] in
            if let data = try?
                Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                        
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
    
    func loadFrom(url: String) {
        self.loadFrom(url: URL(string: url)!)
    }
}
