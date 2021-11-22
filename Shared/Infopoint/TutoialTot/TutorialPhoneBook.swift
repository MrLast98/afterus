//
//  TutorialPhoneBook.swift
//  afterus (iOS)
//
//  Created by Rodolfo Pigna on 20/11/21.
//

import Foundation
import SwiftUI

struct TutorialPhoneBook: View{
    var body: some View {

     Text("PhoneBook")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 1)))
            .multilineTextAlignment(.leading)
            .padding(.top)
        Spacer()
        
        
      
        
            HStack{
                
                Image("TutorialPhoneBook")
                    .frame(width: 50.0, height: 50.0)
                Text("Read info about doctors and dawyers")
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 14)
                                .stroke(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 1)), lineWidth: 4))
                
                }
        Spacer()
        Spacer()
        
        HStack{
            
            Image("TutorialPhoneBook1")
                .frame(width: 50.0, height: 50.0)
            Text("       Search associations on map       ")
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 14)
                            .stroke(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 1)), lineWidth: 4))
                .frame(alignment: .center)
            
      

        }
        Spacer()
//        Spacer()
        Image("PhoneBookPic")
            .padding()
            .frame(width: 150, height: 150)

        Spacer()
        NavigationLink(destination: SettingsView() ){
        makeButtonView(title: "Done")
            .foregroundColor(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 1)))
        
            
        }

  
        
                             }}
    







