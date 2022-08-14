//
//  RegistrationView.swift
//  Twitter
//
//  Created by David E Bratton on 8/13/22.
//

import SwiftUI

struct RegistrationView: View {
    // MARK: - PROPERTIES
    @Environment(\.dismiss) var closeView
    @State private var fullname = ""
    @State private var email = ""
    @State private var username = ""
    @State private var password = ""
    @State private var isShowingImagePicker = false
    @State private var selectedUIImage: UIImage?
    @State private var image: Image?
    
    func loadImage() {
        guard let selectedImage = selectedUIImage else { return }
        image = Image(uiImage: selectedImage)
    }
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Color(red: 0.117, green: 0.633, blue: 0.951)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Button {
                    isShowingImagePicker.toggle()
                } label: {
                    ZStack {
                        if let image = image {
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 140, height: 140)
                                .clipShape(Circle())
                                .padding(.top, 40)
                                .padding(.bottom, 16)
                        } else {
                            Image("plus_photo")
                                .resizable()
                                .renderingMode(.template)
                                .scaledToFill()
                                .frame(width: 140, height: 140)
                                .padding(.top, 40)
                                .padding(.bottom, 16)
                                .foregroundColor(.white)
                        }
                    } //END:ZSTACK
                } //END:BUTTON
                .sheet(isPresented: $isShowingImagePicker) {
                    loadImage()
                } content: {
                    ImagePickerView(image: $selectedUIImage)
                }
                
                VStack(spacing: 20) {
                    TextFieldView(text: $fullname, placeholder: Text("Full Name"), imageName: "person")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    TextFieldView(text: $email, placeholder: Text("Email"), imageName: "envelope")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    TextFieldView(text: $username, placeholder: Text("Username"), imageName: "person")
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
                
                Button {
                    //
                } label: {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .frame(width: 360, height: 50)
                        .background(Color.white)
                        .clipShape(Capsule())
                        .padding()
                } //END:BUTTON
                Spacer()
                HStack {
                    Text("Already have an account?")
                    Button {
                        closeView()
                    } label: {
                        Text("Sign In")
                            .bold()
                    } //END:BUTTON
                } //END:HSTACK
                .font(.footnote)
                .foregroundColor(.white)
                .padding(.bottom, 40)
            } //END:VSTACK
        } //END:ZSTACK
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

// MARK: - PREVIEW
struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
