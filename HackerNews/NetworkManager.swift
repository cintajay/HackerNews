//
//  NetworkManager.swift
//  HackerNews
//
//  Created by Cinta Jose on 08/08/24.
//

import Foundation

struct NetworkManager {
    
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    let decoder = JSONDecoder()
                    if let data = data {
                        do {
                            let results = try decoder.decode(Result.self, from: data)
                        } catch {
                            print("error decoding")
                        }
                    }
                }
            }
        }
        
    }
    
}
