//
//  ContentView.swift
//  HackerNews
//
//  Created by Sean Shlimak on 24/05/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var apiManager = APIManager()
    var body: some View {
        NavigationView{
            List (apiManager.posts){ post in
                NavigationLink(
                    destination: DetailView(url: post.url),
                    label: {
                        HStack {
                            Text("\(String(post.points)) Upvotes")
                                .font(.system(size: 15))
                            Text(post.title)
                                .font(.body)
                                
                        }
                    })
            }
            .navigationTitle("H4XOR NEWS")
        }
        .onAppear(perform: {
            self.apiManager.fetchData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
