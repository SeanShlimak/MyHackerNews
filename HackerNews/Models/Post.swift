//
//  Post.swift
//  HackerNews
//
//  Created by Sean Shlimak on 24/05/2021.
//

import SwiftUI

struct Post: Identifiable,Decodable{
    let objectID: String
    let title: String
    let url: String?
    let points: Int
    
    var id: String {
        objectID
    }
}
