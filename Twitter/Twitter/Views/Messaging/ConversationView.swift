//
//  ConversationView.swift
//  Twitter
//
//  Created by David E Bratton on 8/11/22.
//

import SwiftUI

struct ConversationView: View {
    // MARK: - PROPERTIES
    @State private var isShowingNewMessageView = false
    @State private var showChat = false
    
    // MARK: BODY
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            NavigationLink(
                destination: ChatView(),
                isActive: $showChat,
                label: {}
            )
            ScrollView {
                VStack {
                    ForEach(0..<20) { _ in
                        NavigationLink {
                            ChatView()
                        } label: {
                            ConversationCellView()
                        }

                    } //END:FOREACH
                } //END:LAZYVSTACK
                .padding()
            } //END:SCROLLVIEW
            Button {
                isShowingNewMessageView.toggle()
            } label: {
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding()
            }
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
        } //END:ZSTACK
        .sheet(isPresented: $isShowingNewMessageView) {
            NewMessageView(show: $isShowingNewMessageView, startChat: $showChat)
        }
    }
}

// MARK: - PREVIEW
struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView()
    }
}
