//
//  Message.swift
//  Twitter
//
//  Created by David E Bratton on 8/11/22.
//

import Foundation

struct MockMessage: Identifiable {
    let id = UUID().uuidString
    let imageName: String
    let messageText: String
    let isCurrentUser: Bool
}

let MOCK_MESSAGES: [MockMessage] = [
    .init(imageName: "spiderman", messageText: "Hey what's up?", isCurrentUser: false),
    .init(imageName: "batman", messageText: "Not much and you?", isCurrentUser: true),
    .init(imageName: "batman", messageText: "Yo dude, you really suck balls!", isCurrentUser: true),
    .init(imageName: "spiderman", messageText: "Hey blow me, you bat like creature", isCurrentUser: false),
    .init(imageName: "spiderman", messageText: "By the way, you really don't have any good powers!", isCurrentUser: false),
    .init(imageName: "batman", messageText: "I really don't like you insect.", isCurrentUser: true)
]
