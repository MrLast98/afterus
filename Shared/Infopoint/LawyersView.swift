//
//  LawyersView.swift
//  afterus
//
//  Created by Rodolfo Pigna on 16/11/21.
//

import Foundation
import SwiftUI


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
            
        NavigationView {
            
            
             
                    
            
            VStack {
                Text("   ")
                    .font(.footnote)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
                    .searchable(text: $searchText)
                .navigationTitle("Search for a lawyer ")
                
                
                Text ("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                
 
            
            
                    ScrollView {
                        VStack {
                            ForEach(0..<50) {
                                Text("Lawyer:  \($0)")
                            }
                        }
                    }
                
                
              }
        }
            
           
             
            }
            
            
             
            }
            
            
    
    

