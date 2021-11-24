//
//  TutorialOrganizer.swift
//  afterus (iOS)
//
//  Created by Rodolfo Pigna on 20/11/21.
//

import Foundation
import SwiftUI

struct TutorialOrganize: View{
    var body: some View {

     Text("Organizer")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color(uiColor: .init(red: 224 / 255, green: 224 / 255, blue: 132 / 255, alpha: 1)))
            .multilineTextAlignment(.leading)
            .padding(.top)
        Spacer()
        
        
      
        
            HStack{
                
                Image("TutorialOrganize")
                    .frame(width: 50.0, height: 50.0)
                Text("           Add new events           ")
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 14)
                                .stroke(Color(uiColor: .init(red: 224 / 255, green: 224 / 255, blue: 132 / 255, alpha: 1)), lineWidth: 4))
                
                }
        Spacer()
        Spacer()
        
        HStack{
            
            Image("TutorialOrganize1")
                .frame(width: 50.0, height: 50.0)
            Text("Keep track of your expenses")
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 14)
                            .stroke(Color(uiColor: .init(red: 224 / 255, green: 224 / 255, blue: 132 / 255, alpha: 1)), lineWidth: 4))
                .frame(alignment: .center)
            
      

        }
        Spacer()
//        Spacer()
        Image("OrganizePic")
            .padding()
            .frame(width: 150, height: 150)

        Spacer()
        NavigationLink(destination: TutorialPhoneBook()){
        makeButtonView(title: "Tap to Continue")
            .foregroundColor(Color(uiColor: .init(red: 224 / 255, green: 224 / 255, blue: 132 / 255, alpha: 1)))
        
        }
        
  
        
                             }}
    







