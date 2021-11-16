//
//  NewNoteView.swift
//  afterus
//
//  Created by Marina Sessa on 15/11/21.
//

import Foundation
import SwiftUI


struct NewNoteView: View{
    var body: some View{
        
        VStack{
            Divider()
                .padding()
            Text("Date")
            
            
            
            
            TextEditingView()
                .padding()
            Text("How do you feel?")
                .bold()
            Picker(selection: .constant(2), label: Text("ciao")) {
                Text("Bad").tag(1)
                Text("Can't say").tag(2)
                Text("Good").tag(3)
            }
            .pickerStyle(.segmented)
            .padding()
            
            
        }
        HStack{
            Spacer()
            Image("LogoNewNoteView")
            Spacer()
            NavigationLink(destination: NewNoteView()) {
                makeButtonView(title: "Save")
            }
            
            .padding()
        }
        
    }
    
    
}


struct TextEditingView: View {
    @State private var fullText: String = "Write here your feelings about today..."
    
    var body: some View {
        TextEditor(text: $fullText)
    }
}
