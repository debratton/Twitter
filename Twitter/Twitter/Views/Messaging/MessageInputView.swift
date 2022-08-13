//
//  MessageInputView.swift
//  Twitter
//
//  Created by David E Bratton on 8/11/22.
//

import SwiftUI

struct MessageInputView: View {
    // MARK: - PROPERTIES
    @Binding var messageText: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            TextField("Message...", text: $messageText)
                .textFieldStyle(.plain)
                .frame(minHeight: 30)
            Button {
                //
            } label: {
                Text("Send")
            }

        } //END:HSTACK
    }
}

// MARK: - PREVIEW
struct MessageInputView_Previews: PreviewProvider {
    static var previews: some View {
        MessageInputView(messageText: .constant("Message..."))
    }
}
