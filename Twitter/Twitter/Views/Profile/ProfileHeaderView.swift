//
//  UserProfileHeaderView.swift
//  Twitter
//
//  Created by David E Bratton on 8/12/22.
//

import SwiftUI

struct ProfileHeaderView: View {
    // MARK: - PROPERTIES
    @Environment(\.colorScheme) var colorScheme
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Image("batman")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .shadow(color: colorScheme == .dark ? .white : .black, radius: 10, x: 0.0, y: 0.0   )
            Text("Bruce Wayne")
                .font(.system(size: 16, weight: .semibold))
                .padding(.top, 8)
            Text("@batman")
                .font(.subheadline)
                .foregroundColor(.gray)
            Text("Billionaire by day, crime fighter at night")
                .font(.system(size: 14))
                .padding(.top, 8)
            HStack(spacing: 40) {
                VStack {
                    Text("12")
                        .font(.system(size: 16))
                        .bold()
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)
                } //END:VSTACK
                VStack {
                    Text("12")
                        .font(.system(size: 16))
                        .bold()
                    Text("Following")
                        .font(.footnote)
                        .foregroundColor(.gray)
                } //END:VSTACK
            } //END:HSTACK
            .padding()
        } //END:VSTACK
    }
}

// MARK: - PREVIEW
struct UserProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
