//
//  Location.swift
//  Trackr
//
//  Created by T Dinu on 18/06/2024.
//

import Foundation

// need to make Location Decodable, otherwise decode in LocationsList will complain
struct Location: Decodable {
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
    
    // without static, error: Value type 'Location' cannot have a stored property that recursively contains it
    // static exists only once and shared on all Location instances
    static let example = Location(id: 1, name: "Great Smokey Mountains", country: "United States", description: "A great place to visit", more: "More on click", latitude: 35.6532, longitude: -83.5070, heroPicture: "smokies", advisory:"beware of the bears!")
}
