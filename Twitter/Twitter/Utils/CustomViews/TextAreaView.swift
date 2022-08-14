//
//  TextAreaView.swift
//  Twitter
//
//  Created by David E Bratton on 8/13/22.
//

import SwiftUI

struct TextAreaView: View {
    // MARK: - PROPERTIES
    @Binding var text: String
    let placeholder: String
    
    init(text: Binding<String>, _ placeholder: String) {
        self.placeholder = placeholder
        self._text = text
        UITextView.appearance().backgroundColor = .clear
    }
    
    // MARK: - BODY
    var body: some View {
        ZStack(alignment: .topLeading) {
            if text.isEmpty {
                Text(placeholder)
                    //.foregroundColor(Color(.placeholderText))
                    .foregroundColor(.gray)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
            TextEditor(text: $text)
                .padding(4)
        } //END:ZSTACK
        .font(.body)
    }
}

// MARK: - PREVIEW
//struct TextAreaView_Previews: PreviewProvider {
//    static var previews: some View {
//        TextAreaView(text: .constant(""), placeholder: "Some text")
//    }
//}
