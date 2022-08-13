//
//  UserProfileView.swift
//  Twitter
//
//  Created by David E Bratton on 8/12/22.
//

import SwiftUI

struct UserProfileView: View {
    // MARK: - PROPERTIES
    @State private var selectedFilter: TweetFilterOptions = .tweets
    
    // MARK: - BODY
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView()
                ProfileActionButtonView(isCurrentUser: false)
                FilterButtonView(selectedOption: $selectedFilter)
                    .padding(.top)
                ForEach(0..<10) { tweet in
                    FeedTweetCell()
                }
                .padding()
                Spacer()
            } //END:VSTACK
        } //END:SCROLLVIEW
        .navigationTitle("batman")
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - PREVIEW
struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            UserProfileView()
        }
    }
}
