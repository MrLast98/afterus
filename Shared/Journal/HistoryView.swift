//
//  HistoryView.swift
//  afterus
//
//  Created by Marina Sessa on 15/11/21.
//

import Foundation
import SwiftUI

struct HistoryView: View{
    var body: some View{
        NavigationView{
            VStack {
                
                Text("Sergiy")
                    .padding(.horizontal)
                    .navigationTitle("HISTORY")
                    .toolbar{
                        Button {
                        } label: {
                            NavigationLink(destination: NewNoteView()){
                                Image(systemName:"plus.circle")
                            }
                            
                        }
                    }
                
                Image("LogoHistoryView")
                
            }
        }
    }
    
    
}
struct History_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
        
    }
}
