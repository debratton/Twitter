//
//  LoginView.swift
//  Twitter
//
//  Created by David E Bratton on 8/13/22.
//

import SwiftUI

struct LoginView: View {
    // MARK: - PROPERTIES
    @State private var email = ""
    @State private var password = ""
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.117, green: 0.633, blue: 0.951)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("twitterLogo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 220, height: 100)
                        .padding(.top, 60)
                        .padding(.bottom)
                    VStack(spacing: 20) {
                        TextFieldView(text: $email, placeholder: Text("Email"), imageName: "envelope")
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        TextSecureFieldView(text: $password, placeholder: Text("Password"), imageName: "lock")
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    } //END:VSTACK
                    .padding([.top, .horizontal])
                    HStack {
                        Spacer()
                        NavigationLink {
                            ForgetPasswordView()
                        } label: {
                            Text("Forgot Password?")
                                .font(.footnote)
                                .foregroundColor(.white)
                                .bold()
                        } //END:NAVLINK
                    } //END:HSTACK
                    .padding([.top, .trailing])
                    Button {
                        //
                    } label: {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .frame(width: 360, height: 50)
                            .background(Color.white)
                            .clipShape(Capsule())
                            .padding()
                    } //END:BUTTON
                    Spacer()
                    HStack {
                        Text("Don't have an account?")
                        NavigationLink {
                            RegistrationView()
                        } label: {
                            Text("Sign Up")
                                .bold()
                        } //END:NAVLINK
                    } //END:HSTACK
                    .font(.footnote)
                    .foregroundColor(.white)
                    .padding(.bottom, 40)
                } //END:VSTACK
            } //END:ZSTACK
            .navigationBarHidden(true)
        } //END:NAVVIEW
    }
}

// MARK: - PREVIEW
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
