//
//  SuperheroeProvider.swift
//  SuperheroesIos
//
//  Created by Mañanas on 11/4/24.
//

import Foundation

class SuperheroeProvider {
    
    // MARK: API Network call

    static func searchSuperhero(superheroName: String) async throws -> [Superheroe] {
        
        let url = URL(string: "https://superheroapi.com/api/7252591128153666/search/\(superheroName)")
            
        guard let url = url else {
            throw RuntimeError("No url provided")
        }

        let (data, _) = try await URLSession.shared.data(from: url)
            
        // Parse automático
        let decoded = try JSONDecoder().decode(SuperheroesResponse.self, from: data)
        
        return decoded.results
    }
        
    // MARK: Utils
        
    struct RuntimeError: Error {
        let description: String

        init(_ description: String) {
            self.description = description
        }
    }
}
