//
//  NewsWebView.swift
//  HackerNews
//
//  Created by Cinta Jose on 08/08/24.
//

import Foundation
import WebKit
import SwiftUI

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
