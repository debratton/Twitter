//
//  TextSecureFieldView.swift
//  Twitter
//
//  Created by David E Bratton on 8/13/22.
//

import SwiftUI

struct TextSecureFieldView: View {
    // MARK: - PROPERTIES
    @Binding var text: String
    let placeholder: Text
    let imageName: String
    
    // MARK: - BODY
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                    .foregroundColor(Color(.init(white: 1, alpha: 0.87)))
                    .padding(.leading, 40)
            }
            HStack(spacing: 16) {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width: 20, height: 20)
                SecureField("", text: $text)
            } //END:HSTACK
        } //END:ZSTACK
    }
}

// MARK: - PREVIEW
struct TextSecureFieldView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(red: 0.117, green: 0.633, blue: 0.951)
                .edgesIgnoringSafeArea(.all)
            TextSecureFieldView(text: .constant(""), placeholder: Text("Email"), imageName: "lock")
        }
    }
}
