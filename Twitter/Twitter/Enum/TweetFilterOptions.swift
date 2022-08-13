//
//  TweetFilterOptions.swift
//  Twitter
//
//  Created by David E Bratton on 8/12/22.
//

import Foundation

enum TweetFilterOptions: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets:
            return "Tweets"
        case .replies:
            return "Replies"
        case .likes:
            return "Likes"
        }
    }
}
