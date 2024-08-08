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

//SwiftUI components from UIKit components(views/view controllers)
//makeUIView, updateUIView - 2 mandatory methods
struct NewsWebView: UIViewRepresentable {
    let urlString: String?

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: urlString!) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}
