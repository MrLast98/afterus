//
//  DoctorsPage.swift
//  afterus
//
//  Created by Rodolfo Pigna on 16/11/21.
//

//
import Foundation
import SwiftUI


struct NameDoc: Identifiable {
    let name: String
    let id = UUID()
}

private var doctor = [
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


    





struct DoctorsView: View {
    @State private var searchText = ""

    var body: some View {
        
        
     
    Text("")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.black)
            .navigationTitle("Doctors")
            
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
                .navigationTitle("Search for a Doctor ")
                 List(doctor) {
                    Text($0.name)
                }
                
            
            
            
    }
    }
    


}

