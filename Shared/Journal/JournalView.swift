//  JournalView.swift
//  afterus
//
//  Created by  Emanuele Giunta on 12/11/21.
//

import Foundation
import SwiftUI

enum mood: String, CaseIterable, Identifiable {
    case bad
    case idk
    case good
    
    var id: String { self.rawValue }
}

struct journalEntry: Identifiable, Hashable {
    var id:String = UUID().uuidString
    var title:String = ""
    var date:Date
    var text:String = ""
    var currentMood = mood.idk
}
let dateFormatter = DateFormatter()

struct JournalView: View {
    @State private var search = ""
    @State private var openForm: Bool = false
    @State var entries: [journalEntry] = [journalEntry(
        id: "7f72dc42-4d7c-11ec-81d3-0242ac130003",
        title: "A good day",
        date: dateFormatter.date(from: "10/10/2020") ?? Date.now,
        text: "Oggi e' stata una bella giornata"
    )]

    var body: some View {
        NavigationView {
            VStack{
                List {
                    ForEach(entries, id: \.self) { entry in
                        element(entry: entry)
                    }
                }
                Image("TutorialImage")
                    .padding()
            }.toolbar{
                Button(action: {
                    openForm.toggle()
                }) {
                    Image(systemName:"plus")
                }.sheet(isPresented: $openForm) {
                    NewNoteView(entries: $entries)
                }
            }
            .navigationTitle("JOURNAL")
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

struct element: View {
    @State private var openNote: Bool = false
    let entry: journalEntry
    let dateFormatter = DateFormatter()
    var body: some View {
        Button(action: {
            openNote.toggle()
        }){
            Text(entry.title + " | " + entry.date.formatted())
        }.sheet(isPresented: $openNote) {
            NoteView(entry: entry)
        }
    }
}

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}

