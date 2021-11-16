//
//  InfopointView2.swift
//  afterus
//
//  Created by Rodolfo Pigna on 16/11/21.
//


import Foundation
import SwiftUI


struct InfopointView: View {
    
    var body: some View {
        
        NavigationView {
            VStack {
                Spacer()
                NavigationLink(destination: DoctorsView()) {
                    makeButtonView(title: "Doctor")
                        .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 1.0)))
                        .cornerRadius(14)
                }
                Spacer()
                NavigationLink(destination: HistoryView()) {
                    makeButtonView(title: "Lawyers")
                        .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.80)))
                        .cornerRadius(14)
                }
                Spacer()
                NavigationLink(destination: CheckView()) {
                    makeButtonView(title: "Associations")
                        .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.60)))
                        .cornerRadius(14)
                }
                Spacer()
                NavigationLink(destination: NewNoteView()) {
                    makeButtonView(title: "Medical Services")
                        .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)))
                        .cornerRadius(14)
                }
                Spacer()
                HStack{
                    Spacer()
                    Image("LogoInfoPointView")
                        .padding()
                }
            }
            .padding(.horizontal)
            .navigationTitle("INFOPOINT")
            
            .toolbar{
                Button {
                } label: {
                    NavigationLink(destination: ProfileView()){
                        Image(systemName:"person.crop.circle")
                    }
                    
                }
            }
        }
    }
}

struct InfopointView_Previews: PreviewProvider{
    static var previews: some View{ InfopointView()
        
    }
}


