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
                    .navigationTitle("Settings")
                    .toolbar{
                        Button {
                        } label: {
                            NavigationLink(destination: ProfileView()){
                                Image(systemName:"person.fill")
                            }
                        }
                    }
//                Spacer()
//                makeButtonView(title: "ABOUT US")
//                    .foregroundColor(Color.myColor2)
//                    .overlay(RoundedRectangle(cornerRadius: 18).stroke(Color.myColor2, lineWidth: 4))
//                    .shadow(radius: 10)
//                    .padding()
                Spacer()
                Image("LogoAboutUs")
                Spacer()
                Text("Copyright © Apple Developer Academy Corso Nicolangelo Protopisani 70, 80146 Napoli (NA) Italy")
                    .foregroundColor(Color.gray)
                    .padding()
            }
        }
    }
}




struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
        
    }
}
