//
//  SearchView.swift
//  Twitter
//
//  Created by David E Bratton on 8/10/22.
//

import SwiftUI

struct SearchView: View {
    // MARK: - PROPERTIES
    @State private var searchText = ""
    
    // MARK: - BODY
    var body: some View {
        ScrollView {
            SearchBarView(text: $searchText)
                .padding()
            VStack {
                ForEach(0..<20) { _ in
                    SearchCellView()
                }
            } //END:VSTACK
        } //END:SCROLLVIEW
        .navigationBarTitle("Search")
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - PREVIEW
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SearchView()
        }
    }
}
