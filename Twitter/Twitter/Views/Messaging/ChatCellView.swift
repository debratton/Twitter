//
//  ChatCellView.swift
//  Twitter
//
//  Created by David E Bratton on 8/11/22.
//

import SwiftUI

struct ChatCellView: View {
    // MARK: - PROPERTIES
    @Environment(\.colorScheme) var colorScheme
    let message: MockMessage
    
    // MARK: - PREVIEW
    var body: some View {
        HStack {
            if message.isCurrentUser {
                Spacer()
                Text(message.messageText)
                    .padding()
                    .background(Color.blue)
                    .clipShape(ChatBubbleView(isFromCurrentUser: true))
                    .foregroundColor(.white)
            } else {
                HStack(alignment: .bottom) {
                    Image(message.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    Text(message.messageText)
                        .padding()
                        .background(colorScheme == .dark ? .gray : Color(.systemGray5))
                        .clipShape(ChatBubbleView(isFromCurrentUser: false))
                        .foregroundColor(colorScheme == .dark ? .white : .black)
                } //END:HSTACK
                Spacer()
            } //END:IF-ELSE
        } //END:HSTACK
    }
}

// MARK: - PREVIEW
struct ChatCellView_Previews: PreviewProvider {
    static var previews: some View {
        ChatCellView(message: Contstants.MOCK_MSG_1)
    }
}
