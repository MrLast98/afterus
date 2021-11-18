//
//  LawyersView.swift
//  afterus
//
//  Created by Rodolfo Pigna on 16/11/21.
//
import Foundation
import SwiftUI


struct NameLaw: Identifiable {
    let name: String
    let id = UUID()
}

private var lawyers = [
    NameDoc(name: "Pinco"),
    NameDoc(name: "Pallino"),
    NameDoc(name: "StoCazzo"),
    NameDoc(name: "Carmine"),
    NameDoc(name: "Blallo"),
    NameDoc(name: "NonLoSo"),
    NameDoc(name: "Goku"),
    NameDoc(name: "Seth di OC"),
    NameDoc(name: "Bud Spencer"),
    NameDoc(name: "Cicciolina")
]


    





struct LawyersView: View {
    @State private var searchText = ""

    var body: some View {
        
        
     
    Text("")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.black)
            .navigationTitle("Lawyers")
            
            .toolbar{
                Button {
                } label: {
                    NavigationLink(destination: ProfileView()){
                        Image(systemName:"person.crop.circle")
                    }

                }
            }
    
     
            
             
                    
            
            VStack {
                
                Text (" ")
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .font(.footnote)
                    
                    .foregroundColor(Color.black)
                    .searchable(text: $searchText)
                .navigationTitle("Search for a Lawyer")
                 List(lawyers) {
                    Text($0.name)
                }
                
            
            
            
    }
    }
    


}

