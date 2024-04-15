//
//  Horoscope.swift
//  SuperheroesIos
//
//  Created by Mañanas on 11/4/24.
//

import UIKit

// MARK: Superheroes decodable objects

struct SuperheroesResponse: Decodable {
    let response: String
    //let resultsFor: String
    let results: [Superheroe]
}

struct Superheroe: Decodable {
    let id: String
    let name: String
    //let biography: Biography
    let image: Image
}

struct Image: Decodable {
    let url: String
}

struct Biography: Decodable {
    let firstAppearance: String
    let publisher: String
}
