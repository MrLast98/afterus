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
                    Text("PhoneBook")
                }
            SettingsView()
                .tabItem{
                    Image(systemName: "gearshape.2.fill")
                    Text("Settings")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



