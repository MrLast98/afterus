//
//  Medical Services.swift
//  afterus
//
//  Created by Rodolfo Pigna on 18/11/21.
//



import Foundation
import SwiftUI





    





struct MedicalServicesView: View {
    @State private var searchText = ""

    var body: some View {
        
        

        
    Text("")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.black)
            .navigationTitle("Medical Services")
            
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
            Image("MapSan")
                .padding()
        }
        
      
     
            
             
                    
            
            VStack {
                
                Text (" ")
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .font(.footnote)
                    
                    .foregroundColor(Color.black)
                    .searchable(text: $searchText)
                .navigationTitle("Search for a Medical Service ")

            }
        VStack{
                    List {
                           Text("sdlijvbjidbv")
                           Text("wkejfbòkjef")
                           Text("EIJFBòejf")
                           Text("eijfb e    jfn")
                           Text("wfji   efbpeoufb")

                    }
                    
                 
                    
                    
                }
            
            
            
    }
    }  // FINE BODY
    

