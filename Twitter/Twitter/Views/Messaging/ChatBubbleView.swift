//
//  ChatBubbleView.swift
//  Twitter
//
//  Created by David E Bratton on 8/11/22.
//

import SwiftUI

struct ChatBubbleView: Shape {
    // MARK: - PROPERTIES
    var isFromCurrentUser: Bool
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight, isFromCurrentUser ? .bottomLeft : .bottomRight], cornerRadii: CGSize(width: 16, height: 16))
        return Path(path.cgPath)
    }
}

// MARK: - PREVIEW
struct ChatBubbleView_Previews: PreviewProvider {
    static var previews: some View {
        ChatBubbleView(isFromCurrentUser: false)
    }
}
