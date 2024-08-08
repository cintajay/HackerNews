//
//  ContentView.swift
//  HackerNews
//
//  Created by Cinta Jose on 08/08/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.news) { item in
                NavigationLink(destination: DetailView(), label: {
                    HStack {
                        Text(String(item.points!))
                        Text(item.title!)
                    }
                })
            }
            .navigationTitle("Hacker News")
        }
        .onAppear(perform: {
            networkManager.fetchData()
        })
    }
}

#Preview {
    ContentView()
}

