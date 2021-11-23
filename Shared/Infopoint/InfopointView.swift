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
                        .foregroundColor(.black)
                        .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 1.0)))
                        .cornerRadius(14)
                }
                Spacer()
                NavigationLink(destination: LawyersView()) {
                    makeButtonView(title: "Lawyers")
                        .foregroundColor(.black)
                        .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.80)))
                        .cornerRadius(14)
                }
                Spacer()
                NavigationLink(destination: AssociationsView()) {
                    makeButtonView(title: "Associations")
                        .foregroundColor(.black)
                        .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.80)))
                    .cornerRadius(14)}
                   
                Spacer()
                NavigationLink(destination: MedicalServicesView()) {
                    makeButtonView(title: "Medical Services")
                        .foregroundColor(.black)
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


