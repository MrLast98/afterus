//
//  NewNoteView.swift
//  afterus
//
//  Created by Marina Sessa on 15/11/21.
//

import Foundation
import SwiftUI


struct NewNoteView: View{
    @State private var testo = "write"
    @State private var testo1 = ""
    @State private var testo2 = ""
    @State private var search = ""
    
    var body: some View{
        
        NavigationView{
            
            VStack{
                
                TextField("Enter your surname", text: $testo2)
                    .padding([.top, .leading, .trailing], 15.0)
                Divider()
                    .padding(.horizontal)
                
            
            VStack{
                TextField("Enter your name", text: $testo1)
                    .padding([.top, .leading, .trailing], 15.0)
                
                Divider()
                
            }
            
            TextEditor(text: $testo)
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
            
            HStack{
                Spacer()
                Image("LogoNewNoteView")
                Spacer()
                NavigationLink(destination: NewNoteView()) {
                    makeButtonView(title: "Save")
                        .foregroundColor(.black)
                        .background(Color(uiColor: .init(red: 224 / 255, green: 153 / 255, blue: 121 / 255, alpha: 1)))
                        .cornerRadius(14)
                }
                
                .padding()
            }
            
        }.navigationTitle("NEW NOTE")
            
        }
    }
    
    
    
}

struct NewNoteView_Previews: PreviewProvider {
    static var previews: some View {
        NewNoteView()
    }
}
