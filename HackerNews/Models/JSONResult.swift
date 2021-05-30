//
//  JSONResult.swift
//  HackerNews
//
//  Created by Sean Shlimak on 26/05/2021.
//

import Foundation
struct JSONResult: Decodable {
    let hits: [Post]
}
