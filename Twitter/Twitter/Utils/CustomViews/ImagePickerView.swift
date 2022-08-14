//
//  ImagePickerView.swift
//  Twitter
//
//  Created by David E Bratton on 8/14/22.
//

import SwiftUI

struct ImagePickerView: UIViewControllerRepresentable {
    @Environment(\.dismiss) var closeView
    @Binding var image: UIImage?
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

extension ImagePickerView {
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePickerView
        
        init(_ parent: ImagePickerView) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            //guard let image = info[.originalImage] as? UIImage else { return }
            guard let image = info[.editedImage] as? UIImage else { return }
            parent.image = image
            parent.closeView()
        }
    }
}
