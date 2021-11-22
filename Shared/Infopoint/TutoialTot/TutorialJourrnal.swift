//
//  TutJour1.swift
//  afterus (iOS)
//
//  Created by Rodolfo Pigna on 19/11/21.
//

import Foundation
import SwiftUI

struct TutorialJournal: View{
    var body: some View {
        Text("Journal")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color(uiColor: .init(red: 224 / 255, green: 153 / 255, blue: 121 / 255, alpha: 1)))
            .multilineTextAlignment(.leading)
            .padding(.top)
        Spacer()
        
        
        
        
            HStack{
                
                Image("TutorialJournal")
                    .frame(width: 50.0, height: 50.0)
                Text("Add your stories and emotions")
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 14)
                                .stroke(Color(uiColor: .init(red: 224 / 255, green: 153 / 255, blue: 121 / 255, alpha: 1)), lineWidth: 4))
                
                }
        Spacer()
        Spacer()
        
        HStack{
            
            Image("TutorialJournal1")
                .frame(width: 50.0, height: 50.0)
            Text("    Re-read your experiences     ")
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 14)
                            .stroke(Color(uiColor: .init(red: 224 / 255, green: 153 / 255, blue: 121 / 255, alpha: 1)), lineWidth: 4))
                .frame(alignment: .center)
            
      

        }
        Spacer()
//        Spacer()
        
            
            Image("JournalPic")
                .padding()
                .frame(width: 100, height: 100)
        

        Spacer()
        
        NavigationLink(destination: TutorialOrganize()){
        makeButtonView(title: "Tap to Continue")
                .foregroundColor(Color(uiColor: .init(red: 224 / 255, green: 153 / 255, blue: 121 / 255, alpha: 1)))
        }
            
        
  
        
    }
    
}






