//
//  WorldView.swift
//  Trackr
//
//  Created by T Dinu on 19/06/2024.
//

import MapKit
import SwiftUI

struct WorldView: View {
    @State private var region = MKCoordinateRegion()

    let initialPosition: MapCameraPosition = {
        let center = CLLocationCoordinate2D(latitude: 34.011_284, longitude: -116.166_860)
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: center, span: span)
        return .region(region)
    }()
    
    var body: some View {
        Map(initialPosition: initialPosition)
            .onMapCameraChange(frequency: .continuous) { context in
                region = context.region
            }
    }
    /* @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 52.123634, longitude: 5.183452), span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    
    
    var body: some View {
        Map(coordinateRegion: $region)
            .navigationTitle("Locations")
    } */
}

#Preview {
    WorldView()
}
