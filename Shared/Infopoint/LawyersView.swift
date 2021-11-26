//
//  DoctorsPage.swift
//  afterus
//
//  Created by Rodolfo Pigna on 16/11/21.
//

//
import Foundation
import SwiftUI

struct LawyersView: View {
    @State private var searchText = ""
    
    var body: some View {



    Text("")
        
        Text("")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.black)
            .navigationTitle("Lawyer")

        
        

            .toolbar{
                Button {
                } label: {
                    NavigationLink(destination: ProfileView()){
                        Image(systemName:"person.crop.circle")
                    }
                    
                }
            }

        ScrollView {
            SwiftUI.VStack {


                makeButtonView(title: " Lawyer n.1 ")
                    .frame(width: 250, height: 125)
                    .overlay(RoundedRectangle(cornerRadius: 14)
                                .stroke(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)), lineWidth: 6))

                makeButtonView(title: " Lawyer n.2 " )
                    .frame(width: 250, height: 125)
                    .overlay(RoundedRectangle(cornerRadius: 14)
                                .stroke(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)), lineWidth: 6))
                makeButtonView(title: " Lawyer n.3 " )
                    .frame(width: 250, height: 125)
                    .overlay(RoundedRectangle(cornerRadius: 14)
                                .stroke(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)), lineWidth: 6))
                makeButtonView(title: " Lawyer n.4 " )
                    .frame(width: 250, height: 125)
                    .overlay(RoundedRectangle(cornerRadius: 14)
                                .stroke(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)), lineWidth: 6))

                makeButtonView(title: " Lawyer n.5 " )
                    .frame(width: 250, height: 125)
                    .overlay(RoundedRectangle(cornerRadius: 14)
                                .stroke(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)), lineWidth: 6))

                makeButtonView(title: " Lawyer n.6 " )
                    .frame(width: 250, height: 125)
                    .overlay(RoundedRectangle(cornerRadius: 14)
                                .stroke(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)), lineWidth: 6))






            
        }







           

                Text (" ")
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .font(.footnote)

                    .foregroundColor(Color.black)
                    .searchable(text: $searchText)
                .navigationTitle("Search for a Lawyer")

    }

            
            Text (" ")
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .font(.footnote)
            
                .foregroundColor(Color.black)
                .searchable(text: $searchText)
                .navigationTitle("Search for a Lawyer")
    
        }
    }
    
    
