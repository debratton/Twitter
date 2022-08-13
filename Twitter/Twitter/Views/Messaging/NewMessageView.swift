//
//  NewMessageView.swift
//  Twitter
//
//  Created by David E Bratton on 8/12/22.
//

import SwiftUI

struct NewMessageView: View {
    // MARK: - PROPERTIES
    @State private var searchText = ""
    @Binding var show: Bool
    @Binding var startChat: Bool
    
    // MARK: - BODY
    var body: some View {
        VStack {
            SearchBarView(text: $searchText)
                .padding()
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(0..<20) { _ in
                        HStack {
                            Button {
                                show.toggle()
                                startChat.toggle()
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
struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageView(show: .constant(true), startChat: .constant(true))
    }
}
