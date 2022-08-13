//
//  FeedTweetCell.swift
//  Twitter
//
//  Created by David E Bratton on 8/10/22.
//

import SwiftUI

struct FeedTweetCell: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 12) {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                    .padding(.leading)
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Bruce Wayne")
                            .font(.system(size: 14, weight: .semibold))
                        Text("@batman •")
                            .foregroundColor(.gray)
                        Text("2w")
                            .foregroundColor(.gray)
                    } //END:HSTACK
                    Text("It's not who I am underneath, but what I do that define me")
                } //END:VSTACK
            } //END:HSTACK
            .padding(.bottom)
            .padding(.trailing)
            HStack {
                Button {
                    //
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                }
                Spacer()
                Button {
                    //
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                }
                Spacer()
                Button {
                    //
                } label: {
                    Image(systemName: "heart")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                }
                Spacer()
                Button {
                    //
                } label: {
                    Image(systemName: "bookmark")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                }
            } //END:HSTACK
            .foregroundColor(.gray)
            .padding(.horizontal)
            Divider()
        } //END:VSTACK
        .padding(.leading, -16)
    }
}

// MARK: - PREVIEW
struct FeedTweetCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedTweetCell()
            .previewLayout(.sizeThatFits)
    }
}
