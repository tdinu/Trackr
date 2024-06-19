//
//  LocationsList.swift
//  Trackr
//
//  Created by T Dinu on 18/06/2024.
//

import Foundation

class LocationsList: ObservableObject {
    let places: [Location]
    var primary: Location {
        places[0]
    }
    
    init() {
        // self.places = places
        // need to make Location Decodable, otherwise decode will complain
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        self.places = try! JSONDecoder().decode([Location].self, from: data)
    }
}
