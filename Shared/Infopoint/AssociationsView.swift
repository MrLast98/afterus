//
//  Associations.swift
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
        
        HStack{
            Spacer()
            Image("MapAss")
                .padding()
                
        }
        
      
     
            
             
                    
            
            VStack {
                
                Text (" ")
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .font(.footnote)
                    
                    .foregroundColor(Color.black)
                    .searchable(text: $searchText)
                .navigationTitle("Search for a Associations ")

            }
        VStack{
                    List {
                           Text("Psicologo")
                           Text("Neuropsichiatra")
                           Text("cazzi e mazzi")
                           Text("Bottari")
                           Text("dijewbfpiuefb")

                    }
                    
                 
                    
                    
                }
            
            
            
    }
    }
    




