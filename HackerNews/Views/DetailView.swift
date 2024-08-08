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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}

//SwiftUI components from UIKit components(views/view controllers)
//makeUIView, updateUIView - 2 mandatory methods
struct NewsWebView: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
