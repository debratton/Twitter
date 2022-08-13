//
//  ChatView.swift
//  Twitter
//
//  Created by David E Bratton on 8/11/22.
//

import SwiftUI

struct ChatView: View {
    // MARK: - PROPERTIES
    @State private var messageText = ""
    
    // MARK: - BODY
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(MOCK_MESSAGES, id: \.id) { message in
                        ChatCellView(message: message)
                    } //END:FOREACH
                } //END:VSTACK
                .padding(.horizontal)
            } //END:SCROLLVIEW
            .padding(.top)
            MessageInputView(messageText: $messageText)
                .padding()
        } //END:VSTACK
    }
}

// MARK: - PREVIEW
struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
