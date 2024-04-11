//
//  SuperheroeProvider.swift
//  SuperheroesIos
//
//  Created by Mañanas on 11/4/24.
//

import Foundation

class SuperheroeProvider {
    
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
            Superheroe(id: "aquarius", name: "Aquarius", biography: Biography(firstAppearance: "String", publisher: "String"), image: Image(url: "horoscope-icons/aquarius")),
            Superheroe(id: "pisces", name: "Pisces", biography: Biography(firstAppearance: "String", publisher: "String"), image: Image(url: "horoscope-icons/pisces"))
        ]
        return list
    }
}
