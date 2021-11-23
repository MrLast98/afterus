//
//  Associations.swift
//  afterus
//
//  Created by Rodolfo Pigna on 18/11/21.
//

import Foundation
import SwiftUI











struct AssociationsView: View {
    @State private var searchText = " "
   
    
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
            //
            //        HStack{
            //            Spacer()
            //            Image("MapAss")
            //                .padding()
            //
            //        }
            //
            
            
            
            
            
            
            
            Text (" ")
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .font(.footnote)
            
                .foregroundColor(Color.black)
                .searchable(text: $searchText)
                .navigationTitle("Search for a Associations ")
            
            
            //
            //
            //            Image("MapAss")
            //                .padding()
            //
            
            
            //            List {
            //                Image("MapAss")
            //                    .padding()
            //                Text("Psicologo")
            //                Text("Neuropsichiatra")
            //                Text("cazzi e mazzi")
            //                Text("Bottari")
            //                Text("dijewbfpiuefb")
            //                Text("Psicologo")
            //                Text("Neuropsichiatra")
            //                Text("cazzi e mazzi")
            //                Text("Bottari")
            //
            //
         
            
            
            ScrollView{
                
                
                
                Image("MapAss")
                    .padding()
                makeButtonView(title: "Neuropsichiatra")
                    .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)))
                    .cornerRadius(14)
                    .frame(width: 377)
                
                makeButtonView(title: "Psicologo")
                    .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)))
                    .cornerRadius(14)
                    .frame(width: 377)
                
                makeButtonView(title: "Pornostar")
                    .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)))
                    .cornerRadius(14)
                    .frame(width: 377)
                
                makeButtonView(title: "Gigolò")
                    .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)))
                    .cornerRadius(14)
                    .frame(width: 377)
                    
                
                makeButtonView(title: "Spaccino 1")
                    .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)))
                    .cornerRadius(14)
                    .frame(width: 377)
                
                makeButtonView(title: "Spaccino 2")
                    .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)))
                    .cornerRadius(14)
                    .frame(width: 377)
                
                makeButtonView(title: "Pornosite")
                    .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)))
                    .cornerRadius(14)
                    .frame(width: 377)
                
                makeButtonView(title: "Mi so rotto il cazzo")
                    .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)))
                    .cornerRadius(14)
                    .frame(width: 377)
                
                makeButtonView(title: "Non so cosa scrivere")
                    .background(Color(uiColor: .init(red: 195 / 255, green: 166 / 255, blue: 224 / 255, alpha: 0.50)))
                    .cornerRadius(14)
                    .frame(width: 377)
             
            }
            
            
            
            
    
}









    }
}





