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
        VStack {
            SearchBarView(text: $searchText)
                .padding()
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(0..<20) { _ in
                        HStack {
                            NavigationLink {
                                UserProfileView()
                            } label: {
                                SearchCellView()
                            }
                            Spacer()
                        } //END:HSTACK
                        .padding(.leading)
                    } //END:FOREACH
                } //END:VSTACK
            } //END:SCROLLVIEW
        } //END:VSTACK
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
