
//  JournalView.swift
//  afterus
//
//  Created by Emanuele Giunta on 12/11/21.
//

import Foundation
import SwiftUI

struct JournalView: View {
    @State private var search = ""
    var body: some View {
        NavigationView {
                        VStack {
                            Text(" \(search)")
                                .searchable(text: $search)
                                .navigationTitle("JOURNAL")
                                .padding()
                                .toolbar{
                                    Button {
                                    } label: {
                                        NavigationLink(destination: NewNoteView()){
                                            Image(systemName:"plus.circle")
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
    


func makeButtonView(title: String) -> some View {
    Text(title)
        .bold()
        .padding()
        .frame(maxWidth: .infinity, minHeight: 60)
//        .foregroundColor(.black)
    //.background(Color(uiColor: .init(red: 224 / 255, green: 153 / 255, blue: 121 / 255, alpha: 1)))
    //        .cornerRadius(14)
}

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
        
    }
}
