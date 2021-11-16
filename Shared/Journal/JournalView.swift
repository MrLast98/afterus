
//  JournalView.swift
//  afterus
//
//  Created by Emanuele Giunta on 12/11/21.
//

import Foundation
import SwiftUI

func makeButtonView(title: String) -> some View {
    Text(title)
        .bold()
        .padding()
        .frame(maxWidth: .infinity, minHeight: 60)
        .foregroundColor(.black)
//        .background(Color(uiColor: .init(red: 224 / 255, green: 153 / 255, blue: 121 / 255, alpha: 1)))
//        .cornerRadius(14)
}
struct JournalView: View {

    var body: some View {

        NavigationView {
            VStack {
                Spacer()
                NavigationLink(destination: NewNoteView()) {
                    makeButtonView(title: "New note")
                        .background(Color(uiColor: .init(red: 224 / 255, green: 153 / 255, blue: 121 / 255, alpha: 1)))
                        .cornerRadius(14)
                }
                Spacer()
                NavigationLink(destination: HistoryView()) {
                    makeButtonView(title: "History")
                        .background(Color(uiColor: .init(red: 224 / 255, green: 153 / 255, blue: 121 / 255, alpha: 1)))
                        .cornerRadius(14)
                }
                Spacer()
                NavigationLink(destination: CheckView()) {
                    makeButtonView(title: "Check")
                        .background(Color(uiColor: .init(red: 224 / 255, green: 153 / 255, blue: 121 / 255, alpha: 1)))
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
                    NavigationLink(destination: ProfileView()){
                        Image(systemName:"person.crop.circle")
                    }

                }
            }
        }
    }
}


