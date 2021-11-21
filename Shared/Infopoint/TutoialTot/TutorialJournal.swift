//
//  TutorialJournal.swift
//  afterus (iOS)
//
//  Created by Rodolfo Pigna on 19/11/21.
//

import Foundation
import SwiftUI

struct TutorialJournal: View {
    var body: some View{
        VStack{
        Text("WELCOME TO TUTORIAL")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.black)
            .padding(.top)
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
           
           
            

        
        
            makeButtonView(title: "Tap to Continue")
            background(Color(uiColor: .init(red: 224 / 255, green: 153 / 255, blue: 121 / 255, alpha: 1)))
            .cornerRadius(14)
                .padding(.bottom)
                .frame(width: 220, height: 220)
        
        }
        .padding(.bottom)
    }}
