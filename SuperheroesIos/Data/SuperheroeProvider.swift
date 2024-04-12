//
//  SuperheroeProvider.swift
//  SuperheroesIos
//
//  Created by Mañanas on 11/4/24.
//

import Foundation

class SuperheroeProvider {
    
    // MARK: Data Providers
    
    static func getSuperheroes() -> [Superheroe] {
        let list: [Superheroe] = [
            Superheroe(id: "aries", name: "Aries", biography: Biography(firstAppearance: "String", publisher: "String"), image: Image(url: "horoscope-icons/aries")),
            Superheroe(id: "taurus", name: "Taurus", biography: Biography(firstAppearance: "String", publisher: "String"), image: Image(url: "horoscope-icons/taurus")),
            Superheroe(id: "gemini", name: "Gemini", biography: Biography(firstAppearance: "String", publisher: "String"), image: Image(url: "horoscope-icons/gemini")),
            Superheroe(id: "cancer", name: "Cancer", biography: Biography(firstAppearance: "String", publisher: "String"), image: Image(url: "horoscope-icons/cancer")),
            Superheroe(id: "leo", name: "Leo", biography: Biography(firstAppearance: "String", publisher: "String"), image: Image(url: "horoscope-icons/leo")),
            Superheroe(id: "virgo", name: "Virgo", biography: Biography(firstAppearance: "String", publisher: "String"), image: Image(url: "horoscope-icons/virgo")),
            Superheroe(id: "libra", name: "Libra", biography: Biography(firstAppearance: "String", publisher: "String"), image: Image(url: "horoscope-icons/libra")),
            Superheroe(id: "scorpio", name: "Scorpio", biography: Biography(firstAppearance: "String", publisher: "String"), image: Image(url: "horoscope-icons/scorpio")),
            Superheroe(id: "sagittarius", name: "Sagittarius", biography: Biography(firstAppearance: "String", publisher: "String"), image: Image(url: "horoscope-icons/sagittarius")),
            Superheroe(id: "capricorn", name: "Capricorn", biography: Biography(firstAppearance: "String", publisher: "String"), image: Image(url: "horoscope-icons/capricorn")),
            Superheroe(id: "aquarius", name: "Aquarius", biography: Biography(firstAppearance: "String", publisher: "String"), image: Image(url: "horoscope-icons/aquarius"))
        ]
        return list
    }
    
    // MARK: API Network calls
        
    static func getSuperhero(superheroId: String) async throws -> String {
        var result: String
        let url = URL(string: "https://superheroapi.com/api/7252591128153666/\(superheroId)")
            
        guard let url = url else {
            throw RuntimeError("No url provided")
        }

        let (data, _) = try await URLSession.shared.data(from: url)
            
        // Parse automático
        let decoded = try JSONDecoder().decode(SuperheroesResponse.self, from: data)
                        
        result = decoded.response
            
        return result
    }
        
    // MARK: Utils
        
    struct RuntimeError: Error {
        let description: String

        init(_ description: String) {
            self.description = description
        }
    }
}
