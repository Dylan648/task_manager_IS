//
//  ContentView.swift
//  task_manager_IS
//
//  Created by Dylan Bolter on 9/16/21.
//

import SwiftUI

struct Background<Content: View>: View {
    private var content: Content

    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content()
    }

    var body: some View {
        Color.white
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .overlay(content)
    }
}

struct ContentView: View {
    
    @State private var text = ""
    
    var body: some View {
        
        Background{
            TextView(text: $text).frame(width: 50, height: 50)
            
        }.onTapGesture {
            self.hideKeyboard()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
