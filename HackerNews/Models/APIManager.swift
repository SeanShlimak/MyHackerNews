//
//  APIManager.swift
//  HackerNews
//
//  Created by Sean Shlimak on 24/05/2021.
//

import Foundation

class APIManager: Identifiable, ObservableObject{
    let baseURL = "http://hn.algolia.com/api/v1/search?tags=front_page"
    @Published var posts: [Post] = []
    
    func fetchData(){
        if let url = URL(string: baseURL){
            let urlSession = URLSession(configuration: .default)
            urlSession.dataTask(with: url) { data, response, error in
                if error == nil{
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let result = try decoder.decode(JSONResult.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = result.hits
                            }
                        } catch let error {
                            print(error)
                        }
                    }
                }
            }.resume()
        }
    }
}
