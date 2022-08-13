//
//  NewTweetView.swift
//  Twitter
//
//  Created by David E Bratton on 8/13/22.
//

import SwiftUI

struct NewTweetView: View {
    // MARK: - PROPERTIES
    @Binding var isPresented: Bool
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image("batman")
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                    Text("What's happening?")
                        .foregroundColor(.gray)
                    Spacer()
                } //END:HSTACK
                .padding()
                Spacer()
            } //END:VSTACK
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        isPresented.toggle()
                    } label: {
                        Text("Cancel")
                    } //END:BUTTON
                } //END:TOOLBARITEM
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        // Tweet code
                    } label: {
                        Text("Tweet")
                            .padding(.horizontal)
                            .padding(.vertical, 8)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                    } //END:BUTTON
                } //END:TOOLBARITEM
            } //END:TOOLBAR
        } //END:NAVVIEW
    }
}

// MARK: - PREVIEW
struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView(isPresented: .constant(false))
    }
}
