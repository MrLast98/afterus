//
//  NoteView.swift
//  afterus
//
//  Created by Emanuele Giunta on 24/11/21.
//

import Foundation
import SwiftUI

struct NoteView: View {
    @Environment(\.dismiss) var dismiss
    @State var entry: journalEntry
    var body: some View {
        Text(entry.title)
            .padding([.top, .leading, .trailing], 15.0)
        Text(entry.date.formatted())
        Text(entry.text)
            .padding([.top, .leading, .trailing], 15.0)
        Button("Save") {
            dismiss()
        }
    }
}
