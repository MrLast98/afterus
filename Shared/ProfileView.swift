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
    
    var body: some View{
        NavigationView{
            VStack{

                    HStack{
                        Button(action: {}) {
                            Text("TUTORIAL")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.myColor1)
                            
                        }.padding(.horizontal)
                    
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("ABOUT US")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.myColor2)
                            
                        }
                    }
                    Spacer()
                    
                    TextField("Full Name", text: $testo4)
                        .padding([.top, .leading, .trailing], 15.0)
                    Divider()
                        .padding(.horizontal)
                
                VStack{
                    
                    TextField("City", text: $testo5)
                        .padding([.top, .leading, .trailing], 15.0)
                    
                    Divider()
                    
                    HStack{
                        Text("Files")
                            .bold()
                        
                        Text("msffds")
                    }
                }
                .padding(.horizontal)
                .navigationTitle("PROFILE")
                Spacer()
                HStack{
                    
                   Spacer()
                    
                    NavigationLink(destination: NewNoteView()) {
                        makeButtonView(title: "Save")
                            .background(Color.myColor1)
                            .cornerRadius(14)
                            .frame(width: 138, height: 45)
                            .padding()
                        Spacer()
                    }
                    
                }
                Image("LogoProfileView")
                    .padding()
                Spacer()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
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
