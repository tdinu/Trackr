//
//  TipsView.swift
//  Trackr
//
//  Created by T Dinu on 28/06/2024.
//

import SwiftUI

struct TipsView: View {
    let tips: [Tip]
    
    init() {
        // self.places = places
        // need to make Location Decodable, otherwise decode will complain
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        self.tips = try! JSONDecoder().decode([Tip].self, from: data)
    }
    
    var body: some View {
        List(tips, id: \.text, children: \.children) {
            tip in
            if tip.children != nil {
                Label(tip.text, systemImage: "quote.bubble")
                    .font(.headline)
            } else {
                Text(tip.text)
            }
        }
        .navigationTitle("Tips")
    }
}

#Preview {
    TipsView()
}
