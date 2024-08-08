//
//  ContentView.swift
//  HackerNews
//
//  Created by Cinta Jose on 08/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(newsList) { item in
                Text(item.news)
            }
            .navigationTitle("Hacker News")
        }
    }
}

#Preview {
    ContentView()
}

struct Post: Identifiable {
    let id: Int
    let news: String
}

let newsList = [Post(id: 1, news: "news 1"),
                Post(id: 2, news: "news 2")]

