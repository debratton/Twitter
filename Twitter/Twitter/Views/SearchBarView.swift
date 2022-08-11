//
//  SearchBarView.swift
//  Twitter
//
//  Created by David E Bratton on 8/10/22.
//

import SwiftUI

struct SearchBarView: View {
    // MARK: - PROPERTIES
    @Binding var text: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            TextField("Search...", text: $text)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                    } //END:HSTACK
                ) //END:OVERLAY
        } //END:HSTACK
        .padding(.horizontal, 10)
    }
}

// MARK: - PREVIEW
struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(text: .constant("Search..."))
            .previewLayout(.sizeThatFits)
    }
}
