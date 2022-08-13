//
//  ConversationCellView.swift
//  Twitter
//
//  Created by David E Bratton on 8/11/22.
//

import SwiftUI

struct ConversationCellView: View {
    // MARK: - PROPERTIES
    @Environment(\.colorScheme) var colorScheme
    
    // MARK: - BODY
    var body: some View {
        VStack {
            HStack(spacing: 12) {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 4) {
                    Text("batman")
                        .font(.system(size: 14, weight: .semibold))
                    Text("Much longer message text to see how it looks when you have long text.")
                        .font(.system(size: 15))
                        .multilineTextAlignment(.leading)
                } //END:VSTACK
                .foregroundColor(colorScheme == .dark ? .white : .black)
            } //END:HSTACK
            .padding(.trailing)
            Divider()
        }
    }
}

// MARK: - PREVIEW
struct ConversationCellView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCellView()
    }
}
