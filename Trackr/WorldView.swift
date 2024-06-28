//
//  WorldView.swift
//  Trackr
//
//  Created by T Dinu on 19/06/2024.
//

import MapKit
import SwiftUI

struct WorldView: View {
    @EnvironmentObject var locations: LocationsList
    @State private var region = MKCoordinateRegion()

    let initialPosition: MapCameraPosition = {
        let center = CLLocationCoordinate2D(latitude: 34.011_284, longitude: -116.166_860)
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: center, span: span)
        return .region(region)
    }()
    
    var coordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: 52.123634,
                longitude: 5.183452
            )
        }
    
    var body: some View {
        Map(initialPosition: .region(MKCoordinateRegion(center: coordinate, span: (MKCoordinateSpan(latitudeDelta: 30, longitudeDelta: 30))))) {
            ForEach(locations.places) { 
                place in
                Annotation(place.name, coordinate: CLLocationCoordinate2D(
                    latitude: place.latitude,
                    longitude: place.longitude
                )) {
                    Image(place.country)
                        .resizable()
                        .cornerRadius(5)
                        .frame(width: 65, height: 35)
                        .shadow(radius: 3)
                    }
                }
        }
    }
}

#Preview {
    WorldView()
        .environmentObject(LocationsList())
}
