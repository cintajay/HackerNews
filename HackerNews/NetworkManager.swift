//
//  NetworkManager.swift
//  HackerNews
//
//  Created by Cinta Jose on 08/08/24.
//

import Foundation

class NetworkManager: ObservableObject {
    @Published var news = [Hit]()
    
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let data = data {
                        do {
                            let results = try decoder.decode(Result.self, from: data)
                            print(results.hits)
                            DispatchQueue.main.async {
                                self.news = results.hits!
                            }
                        } catch {
                            print("error decoding")
                        }
                    }
                } else {
                    print(error)
                }
            } 
            task.resume()
        }
        
    }
    
}
