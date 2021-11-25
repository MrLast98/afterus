//
//  NewNoteView.swift
//  afterus
//
//  Created by Marina Sessa on 15/11/21.
//

import Foundation
import SwiftUI

struct NewNoteView: View{
    @Environment(\.dismiss) var dismiss
    @State private var entry = journalEntry(
        id: "7f72dc42-4d7c-11ec-81d3-0242ac130003",
        title: "",
        date: Date(),
        text: "",
        currentMood: mood.idk
    )
    @Binding var entries: [journalEntry]
    var body: some View{
        NavigationView{
            VStack{
                TextField("Enter a title", text: $entry.title)
                    .padding([.top, .leading, .trailing], 15.0)
                Divider()
                    .padding(.horizontal)
                DatePicker(
                    "Insert Date",
                    selection: $entry.date,
                    displayedComponents: [.date]
                ).padding([.top, .leading, .trailing], 15.0)
                
                TextEditor(text: $entry.text)
                    .padding()
                Text("How do you feel?")
                    .bold()
                
                Picker(selection: $entry.currentMood, label: Text("ciao")) {
                    Text("Bad").tag(mood.bad)
                    Text("Can't say").tag(mood.idk)
                    Text("Good").tag(mood.good)
                }
                .pickerStyle(.segmented)
                .padding()
                
                HStack{
                    Spacer()
                    Image("LogoNewNoteView")
                    Spacer()
                    Button("Save", action: {
                        entries.append(entry)
                        dismiss()
                    })
                    .foregroundColor(.black)
                    .frame(width: 150, height: 60)
                    .background(Color(uiColor: .init(red: 224 / 255, green: 153 / 255, blue: 121 / 255, alpha: 1)))
                    .cornerRadius(14)
                    .padding()
                }
                
            }.navigationTitle("NEW NOTE")
            
        }
    }
}
