//
//  ContentView.swift
//  HelpBookViewer
//
//  Created by mark on 4/9/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isImporting: Bool = false
    @State private var bookURL: URL = URL(fileURLWithPath: "")
    
    var body: some View {
        WebView(url: bookURL, filename: "index.html")
            .toolbar {
                ToolbarItemGroup(placement: .automatic) {
                    Button("Choose Book") {
                        isImporting = true
                    }
                    .accessibilityLabel("Choose Book")
                }
            }
            .fileImporter(isPresented: $isImporting, allowedContentTypes: [.package], onCompletion: { result in
                switch result {
                    case .success(let url):
                        bookURL = url
                    case .failure(let error):
                        print(error)
                    }
            })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
