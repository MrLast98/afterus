//
//  DoctorsPage.swift
//  afterus
//
//  Created by Rodolfo Pigna on 16/11/21.
//

//
import Foundation
import SwiftUI


struct DoctorsView: View {
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            Text("")
                .searchable(text: $searchText)
                .navigationTitle("Search a Doctor ")
        }
    }
}
