//
//  TrackrApp.swift
//  Trackr
//
//  Created by T Dinu on 18/06/2024.
//

import SwiftUI

@main
struct TrackrApp: App {
    @StateObject var locations = LocationsList()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationStack {
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                
                NavigationStack {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Location")
                }
                NavigationStack {
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }
            .environmentObject(locations)
        }
    }
}
