//
//  MyWebView.swift
//  HackerNews
//
//  Created by Sean Shlimak on 26/05/2021.
//

import SwiftUI
import WebKit
import Foundation

struct MyWebView: UIViewRepresentable{
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let urlRequest = URLRequest(url: url)
                uiView.load(urlRequest)
            }
        }
    }
    
}
