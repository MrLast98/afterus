//
//  HistoryView.swift
//  afterus
//
//  Created by Marina Sessa on 15/11/21.
//

import Foundation
import SwiftUI

struct HistoryView: View{
@State private var search = ""
    var body: some View{
        
        NavigationView{
            VStack {
                Text(" \(search)")
                    .searchable(text: $search)
                    .navigationTitle("HISTORY")
                    .padding()
                
                    .toolbar{
                        Button {
                        } label: {
                            NavigationLink(destination: SettingsView()){
                                Image(systemName:"gearshape")
                            }
                            
                        }
                    }
                List {
                    Text("ciao")
                    Text("ciao")
                    Text("ciao")
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
