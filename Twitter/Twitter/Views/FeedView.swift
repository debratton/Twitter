//
//  FeedView.swift
//  Twitter
//
//  Created by David E Bratton on 8/10/22.
//

import SwiftUI

struct FeedView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                VStack {
                    ForEach(0..<20) { _ in
                        FeedTweetCell()
                    } //END:FOREACH
                } //END:LAZYVSTACK
                .padding()
            } //END:SCROLLVIEW
            Button {
                //
            } label: {
                Image("tweet")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 32, height: 32)
                    .padding()
            }
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
        } //END:ZSTACK
    }
}

// MARK: - PREVIEW
struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
