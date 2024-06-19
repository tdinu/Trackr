//
//  TrackrApp.swift
//  Trackr
//
//  Created by T Dinu on 18/06/2024.
//

import SwiftUI

@main
struct TrackrApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationStack {
                    ContentView(location: LocationsList().primary)
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
            }
        }
    }
}
