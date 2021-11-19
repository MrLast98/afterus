//
//  ContentView.swift
//  Shared
//
//  Created by Emanuele Giunta on 12/11/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    var body: some View {
//        NavigationView {
//            List {
//                ForEach(items) { item in
//                    NavigationLink {
//                        Text("Item at \(item.timestamp!, //formatter: itemFormatter)")
//                    } label: {
//                        Text(item.timestamp!, formatter: //itemFormatter)
//                    }
//                }
//                .onDelete(perform: deleteItems)
//            }
//            .toolbar {
//#if os(iOS)
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    EditButton()
//                }
//#endif
//                ToolbarItem {
//                    Button(action: addItem) {
//                        Label("Add Item", systemImage: "plus")
//                    }
//                }
//            }
//            Text("Select an item")
//        }

        TabView {
            JournalView()
                .tabItem {
                    Image(systemName: "brain")
                    Text("Journal")
                }
            OrganizerView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Organizer")
                }
            InfopointView()
                    .tabItem {
                        Image(systemName: "book.closed.fill")
                        Text("Infopoint")
                    }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}



