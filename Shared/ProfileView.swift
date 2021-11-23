//
//  ProfileView.swift
//  afterus
//
//  Created by Marina Sessa on 15/11/21.
//

import Foundation
import SwiftUI

struct ProfileView: View{
    
    @State private var testo4 = ""
    @State private var testo5 = ""
    @State private var testo6 = ""
    
    var body: some View{
        NavigationView{
            VStack{
                TextField("Full Name", text: $testo4)
                    .padding([.top, .leading, .trailing], 15.0)
                Divider()
                    .padding(.horizontal)
                TextField("City", text: $testo5)
                    .padding([.top, .leading, .trailing], 15.0)
                Divider()
                    .padding(.horizontal)
                TextField("Health insurance card", text: $testo6)
                    .padding([.top, .leading, .trailing], 15.0)
                Divider()
                    .padding(.horizontal)
                HStack{
                   
                    Text("Medical Records")
                        .bold()
                        .padding()
                    Spacer()
                }
                
                
                ScrollView(.horizontal){
                    HStack{
                        Image(systemName: "plus.app")
                        Image("LogoPdf")
                        Image("LogoPdf")
                        Image("LogoPdf")
                    }
                }
                            HStack{
                                Spacer()
                                    NavigationLink(destination: NewNoteView()) {
                                        makeButtonView(title: "Save")
                                            .foregroundColor(.black)
                                            .background(Color.myColor1)
                                            .cornerRadius(14)
                                            .frame(width: 138, height: 45)
                                            .padding()
                                    }
                                }
            }.padding(.horizontal)
            .navigationTitle("PROFILE")
            
        }
        
        
    }
    
}






extension Color {
    static var myColor1: Color {
        Color(uiColor: .init(red: 143 / 255, green: 225 / 255, blue: 215 / 255, alpha: 1))
    }
    static var myColor2: Color {
        Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 1))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


