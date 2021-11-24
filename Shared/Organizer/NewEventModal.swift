//
//  NewEventModal.swift
//  afterus
//
//  Created by Emanuele Giunta on 23/11/21.
//

import Foundation
import SwiftUI

enum expenseTypes: String, CaseIterable, Identifiable {
    case Doctors
    case Lawyers
    case Medicine
    
    var id: String { self.rawValue }
}

struct eventData {
    var title: String
    var location: String
    var date: Date
    var specialist: String
    var price: Decimal
    var type: expenseTypes = expenseTypes.Doctors
}

private var currencyFormatter: NumberFormatter = {
    let f = NumberFormatter()
    // allow no currency symbol, extra digits, etc
    f.isLenient = true
    f.numberStyle = .currency
    return f
}()

struct NewEventModal: View {
    @Environment(\.dismiss) var dismiss
    @State var data = eventData(title: "", location: "", date: Date(), specialist: "", price: 0.0)
    
    var body: some View {
        TextField("Title of the Event", text: $data.title)
            .padding([.top, .leading, .trailing], 15.0)
        TextField("Location", text: $data.location)
            .padding([.top, .leading, .trailing], 15.0)
        DatePicker(
                "Start Date",
                selection: $data.date,
                displayedComponents: [.date]
        ).padding([.top, .leading, .trailing], 15.0)
        TextField("Specialist", text: $data.specialist)
            .padding([.top, .leading, .trailing], 15.0)
        TextField("Price", value: $data.price, formatter: currencyFormatter)
            .padding([.top, .leading, .trailing], 15.0)
        Picker("ExpenseType", selection: $data.type) {
            Text("Doctors").tag(expenseTypes.Doctors)
            Text("Lawyers").tag(expenseTypes.Lawyers)
            Text("Medicine").tag(expenseTypes.Medicine)
        }
        .pickerStyle(.segmented)
        .padding()
        Button("Save") {
            dismiss()
        }
        .font(.title)
        .padding()
        .foregroundColor(Color.white)
        .background(Color.myColor2)
        .navigationTitle("Add a New Event")
    }
}
