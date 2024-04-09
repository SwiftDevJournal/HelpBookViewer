//
//  WebView.swift
//  HelpBookViewer
//
//  Created by mark on 4/9/24.
//

import SwiftUI
import WebKit

struct WebView: NSViewRepresentable {
    var bookURL: URL
    var currentFilename: String = ""
    
    init(url: URL, filename: String) {
        self.bookURL = url
        self.currentFilename = filename
    }
    
    func makeNSView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }
    
    func updateNSView(_ nsView: WKWebView, context: Context) {
        let contentsFolder = bookURL.appendingPathComponent("Contents")
        let resourcesFolder = contentsFolder.appendingPathComponent("Resources")
        let currentFile = resourcesFolder.appendingPathComponent(currentFilename)
        nsView.loadFileURL(currentFile, allowingReadAccessTo: resourcesFolder)
    }
}

