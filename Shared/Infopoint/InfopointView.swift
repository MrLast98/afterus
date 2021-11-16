//
//  InfopointView.swift
//  afterus
//
//  Created by Emanuele Giunta on 12/11/21.
//

import Foundation
import SwiftUI


struct InfopointView: View {
    var body: some View {
                   
            
        
        
        VStack {
            
            Text("DOCUMENTS")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                .frame(alignment: .top)
            
            Image("immagineDoc")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .offset(x: 10,y: 240)
                .frame(width: 330.0, height: 330.0)
            

          
            
                
            
                
                
                
                
       
            
            

                
            
        }
        
       
        
        
    }
        
        
    }

