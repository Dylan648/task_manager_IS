//
//  TextView.swift
//  task_manager_IS
//
//  Created by Dylan Bolter on 9/16/21.
//

import SwiftUI
 
struct TextView: UIViewRepresentable {
 
    @Binding var text: String
 
    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
 
        textView.autocapitalizationType = .sentences
        textView.isSelectable = true
        textView.isUserInteractionEnabled = true
        textView.backgroundColor = UIColor.gray

 
        return textView
    }
 
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text

    }
}
