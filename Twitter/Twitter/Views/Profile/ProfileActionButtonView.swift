//
//  ProfileActionButtonView.swift
//  Twitter
//
//  Created by David E Bratton on 8/12/22.
//

import SwiftUI

struct ProfileActionButtonView: View {
    // MARK: - PROPERTIES
    let isCurrentUser: Bool
    
    // MARK: - BODY
    var body: some View {
        if isCurrentUser {
            Button {
                //
            } label: {
                Text("Edit Profile")
                    .frame(width: 360, height: 40)
                    .background(Color.blue)
                    .foregroundColor(.white)
            }
            .clipShape(Capsule())
        } else {
            HStack {
                Button {
                    //
                } label: {
                    Text("Follow")
                        .frame(width: 180, height: 40)
                        .background(Color.blue)
                        .foregroundColor(.white)
                }
                .clipShape(Capsule())
                
                Button {
                    //
                } label: {
                    Text("Message")
                        .frame(width: 180, height: 40)
                        .background(Color.purple)
                        .foregroundColor(.white)
                }
                .clipShape(Capsule())

            } //END:HSTACK
        }
    }
}

// MARK: - PREVIEW
struct ProfileActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButtonView(isCurrentUser: false)
    }
}
