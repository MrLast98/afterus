//
//  OrganizerView.swift
//  afterus
//
//  Created by Emanuele Giunta on 12/11/21.
//

import Foundation
import SwiftUI

enum dataRange: String, CaseIterable, Identifiable {
    case Monthly
    case Yearly
    case YTD
    
    var id: String { self.rawValue }
}

struct OrganizerView: View {
    @State private var selection = dataRange.Monthly;
    
    var body: some View {
        VStack{
            NavigationView{
                dayList()
                    .padding(.horizontal)
                    .navigationTitle("ORGANIZER")
            }
            .frame(height:200)
            .toolbar{
                
            }
            Picker("Data Range", selection: $selection) {
                Text("Monthly").tag(dataRange.Monthly)
                Text("Yearly").tag(dataRange.Yearly)
                Text("YTD").tag(dataRange.YTD)
            }
            .pickerStyle(.segmented)
            .padding()
            PieChartView(
                values: returnValues(selection: self.selection),
                names: ["Rent", "Transport", "Education"],
                formatter: {value in String(format: "$%.2f", value)},
                backgroundColor: Color.white,
                labelColor: Color.black)
                .padding(.horizontal)
            
        }
    }
}

func returnValues(selection: dataRange) -> [Double] {
    switch selection.rawValue {
    case "Monthly":
        return [33, 33, 34]
    case "Yearly":
        return [300, 500, 1300]
    case "YTD":
        return [1300, 500, 300]
    default:
        return [10, 10, 200]
    }
}


struct dayList: View {
    @State var list: [String] = [ "5", "6", "11", "12", "30", "31"]
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(list, id: \.self) {
                    list in Image(systemName: list + ".circle")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                }
            }
        }
    }
}

struct OrganizerView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OrganizerView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext).previewInterfaceOrientation(.portrait)
        }
    }
}
