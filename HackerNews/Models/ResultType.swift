//
//  ResultType.swift
//  HackerNews
//
//  Created by Sean Shlimak on 24/05/2021.
//

import Foundation
enum ResultType<T, U: Error> {
    case success(T)
    case failure(U)
}
