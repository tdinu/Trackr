//
//  ContentView.swift
//  Trackr
//
//  Created by T Dinu on 18/06/2024.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    
    var body: some View {
        ScrollView {
            VStack {
                Image(location.heroPicture)
                    .resizable()
                    .scaledToFit()
                Text(location.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                Text(location.country)
                    .font(.title)
                    .foregroundColor(.secondary)
                Text(location.description)
                Text("Did you know?")
                    .font(.title3)
                    .bold()
                    .padding(.top)
                Text(location.more)
                
            }
            .padding()
        }
        .navigationTitle("Discover")
    }
}

#Preview {
    NavigationStack {
        ContentView(location: LocationsList().primary)
    }
}
