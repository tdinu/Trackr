//
//  Tip.swift
//  Trackr
//
//  Created by T Dinu on 28/06/2024.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
