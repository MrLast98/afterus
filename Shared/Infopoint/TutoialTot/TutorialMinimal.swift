//
//  TutorialJournal.swift
//  afterus (iOS)
//
//  Created by Rodolfo Pigna on 19/11/21.
//

import Foundation
import SwiftUI

struct TutorialMinimal: View {
    var body: some View{
        VStack{
            Text("WELCOME")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                .padding(.top)
            
            Text("TO ")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                .padding(.top)
            
            Text("TUTORIAL")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                .padding(.top)
            
            Spacer()
            NavigationLink(destination: TutorialJournal()) {
                makeButtonView(title: "Tap to Continue")
                    .foregroundColor(.black)
                    .background(Color(uiColor: .init(red: 143 / 255, green: 225 / 255, blue: 215 / 255, alpha: 1)))
                    .cornerRadius(14)
                    .frame(width: 200, height: 200)
            }
                Spacer()
                Image("TutorialImage")    
        }
        .padding(.bottom)
        
           
        
        
        

    }}
