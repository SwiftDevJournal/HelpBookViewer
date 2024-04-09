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
    var currentChapterFilename: String = ""
    
    init(url: URL, filename: String) {
        self.bookURL = url
        self.currentChapterFilename = filename
    }
    
    func makeNSView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }
    
    func updateNSView(_ nsView: WKWebView, context: Context) {
        let oebpsFolder = bookURL.appendingPathComponent("OEBPS")
        let textFolder = oebpsFolder.appendingPathComponent("Text")
        let chapterFile = textFolder.appendingPathComponent(currentChapterFilename)
        nsView.loadFileURL(chapterFile, allowingReadAccessTo: oebpsFolder)
    }
}

