
//  JournalView.swift
//  afterus
//
//  Created by Emanuele Giunta on 12/11/21.
//

import Foundation
import SwiftUI




struct JournalView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                NavigationLink(destination: NewNoteView()) {
                    makeButtonView(title: "New note")
                        .foregroundColor(.black)
                        .background(Color(uiColor: .init(red: 224 / 255, green: 153 / 255, blue: 121 / 255, alpha: 1)))
                        .cornerRadius(14)
                }
                Spacer()
                NavigationLink(destination: HistoryView()) {
                    makeButtonView(title: "History")
                        .foregroundColor(.black)
                        .background(Color(uiColor: .init(red: 224 / 255, green: 153 / 255, blue: 121 / 255, alpha: 0.9)))
                        .cornerRadius(14)
                }
              
                Spacer()
                HStack{
                    Spacer()
                    Image("LogoJournalView")
                        .padding()
                }
            }
            .padding(.horizontal)
            .navigationTitle("JOURNAL")
            
            .toolbar{
                Button {
                } label: {
                    NavigationLink(destination: SettingsView()){
                        Image(systemName:"gearshape")
                    }
                    
                }
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
