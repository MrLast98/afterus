//
//  SettingsView.swift
//  afterus
//
//  Created by Marina Sessa on 18/11/21.
//

import Foundation
import SwiftUI


struct SettingsView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                Spacer()
                NavigationLink(destination: TutorialMinimal()){
                    makeButtonView(title: "TUTORIAL")
                        .foregroundColor(Color.myColor1)
                        .overlay(RoundedRectangle(cornerRadius: 18)
                        .stroke(Color.myColor1, lineWidth: 4))
                        .shadow(radius: 10)
                    
                }.padding()
                    
                
                
                Spacer()
                    makeButtonView(title: "ABOUT US")
                        .foregroundColor(Color.myColor2)
                        .overlay(RoundedRectangle(cornerRadius: 18).stroke(Color.myColor2, lineWidth: 4))
                        .shadow(radius: 10)
                        .padding()


                Spacer()
                
                
                Text("ciao")
                
                    .padding(.horizontal)
                    .navigationTitle("SETTINGS")
                Image("LogoHistoryView")
            }
            
        }
    }
    
//}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
        
    }
}
}
