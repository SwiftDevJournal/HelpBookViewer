//
//  ContentView.swift
//  HelpBookViewer
//
//  Created by mark on 4/9/24.
//

import SwiftUI
import UniformTypeIdentifiers

struct ContentView: View {
    @State private var isImporting: Bool = false
    @State private var bookURL: URL = URL(fileURLWithPath: "")
    
    var body: some View {
        WebView(url: bookURL, filename: "index.html")
            .toolbar {
                ToolbarItemGroup(placement: .principal) {
                    Button(action: {
                        isImporting = true
                    }, label: {
                        Label("Choose Book", systemImage: "book.closed.fill")
                            .labelStyle(VerticalLabelStyle())
                    }).accessibilityLabel("Choose Help Book")
                }
            }
            // FIXME: Allow only help books to be opened. The only way I can open help books from the file importer now is to add .item to the list of allowed content types. But this allows any file type to be opened.
            .fileImporter(isPresented: $isImporting, allowedContentTypes: [.appleHelpBook, .item], onCompletion: { result in
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
