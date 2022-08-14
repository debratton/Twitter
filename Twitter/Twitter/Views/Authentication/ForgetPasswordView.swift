//
//  ForgetPasswordView.swift
//  Twitter
//
//  Created by David E Bratton on 8/13/22.
//

import SwiftUI

struct ForgetPasswordView: View {
    // MARK: - PROPERTIES
    @Environment(\.dismiss) var closeView
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Color(red: 0.117, green: 0.633, blue: 0.951)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Forget Password")
                Button {
                    closeView()
                } label: {
                    Text("Close")
                } //END:BUTTON
            } //END:VSTACK
        } //END:ZSTACK
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

// MARK: - PREVIEW
struct ForgetPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgetPasswordView()
    }
}
