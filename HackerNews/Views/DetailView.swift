//
//  DetailView.swift
//  HackerNews
//
//  Created by Cinta Jose on 08/08/24.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    
    var body: some View {
        NewsWebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}
