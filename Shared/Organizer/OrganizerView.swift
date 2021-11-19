//
//  OrganizerView.swift
//  afterus
//
//  Created by Emanuele Giunta on 12/11/21.
//

import Foundation
import SwiftUI

struct OrganizerView: View {
    
    //struct nvStyle : NavigationViewStyle {
    //}
    
    var body: some View {
        VStack{
            NavigationView{
                dayList()
                .frame(height:80)
                .padding(.horizontal)
                .navigationTitle("ORGANIZER")
                .toolbar{
                    Button {
                    } label: {
                        NavigationLink(destination: ProfileView()){
                            Image(systemName:"person.crop.circle")
                        }
                    }
                }
            }
            Text("naggiamaronn")
        }
        
    }
}

struct dayList: View {
    @State var list: [String] = [ "5", "12", "31"]
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
             LazyHStack {
                 ForEach(list, id: \.self) {
                     list in Image(systemName: list + ".circle")
                         .resizable()
                         .scaledToFill()
                         .frame(width: 50, height: 50)
                         .badge(list)
                 }
             }
        }
    }
}

struct OrganizerView_Previews: PreviewProvider {
    static var previews: some View {
        OrganizerView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
