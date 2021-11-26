//
//  Medical Services.swift
//  afterus
//
//  Created by Rodolfo Pigna on 18/11/21.
//



import Foundation
import SwiftUI

struct AssociationsView: View {
    @State private var searchText = ""
    
    var body: some View {
        Text("")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.black)
            .navigationTitle("Associations")
        
            .toolbar{
                Button {
                } label: {
                    NavigationLink(destination: ProfileView()){
                        Image(systemName:"person.crop.circle")
                    }
                    
                }
            }
        
        //        HStack{
        //            Spacer()
        //            Image("MapSan")
        //                .padding()
        //        }
        //

        VStack {
            Text (" ")
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .font(.footnote)
                .searchable(text: $searchText)
                .navigationTitle("Search for a Association ")
            
        }
        ScrollView {
            Image("MapSan")
                .padding()
            makeButtonView(title: "Association n.1")
                .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)))
                .cornerRadius(14)
                .frame(width: 377)
            
            makeButtonView(title: "Association n.2")
                .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)))
                .cornerRadius(14)
                .frame(width: 377)
            
            makeButtonView(title: "Association n.3")
                .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)))
                .cornerRadius(14)
                .frame(width: 377)
            
            makeButtonView(title: "Association n.4")
                .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)))
                .cornerRadius(14)
                .frame(width: 377)
            
            
            makeButtonView(title: "Association n.5")
                .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)))
                .cornerRadius(14)
                .frame(width: 377)
            
            makeButtonView(title: "Association n.6")
                .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)))
                .cornerRadius(14)
                .frame(width: 377)
            
            makeButtonView(title: "Association n.7")
                .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)))
                .cornerRadius(14)
                .frame(width: 377)
            
          
        }
    }
}


