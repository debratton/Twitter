//
//  ContentView.swift
//  Twitter
//
//  Created by David E Bratton on 8/10/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            TabView {
                FeedView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                ConversationView()
                    .tabItem {
                        Image(systemName: "envelope")
                        Text("Messages")
                    }
            } //END:TABVIEW
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            
        } //END:NAVVIEW
    }
}

// MARK: - PREIVEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
