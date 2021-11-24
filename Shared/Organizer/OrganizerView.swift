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
    @State private var openModal = false
    
    var body: some View {
        VStack{
            NavigationView{
                dayList()
                    .padding(.horizontal)
                    .navigationTitle("ORGANIZER")
                    .toolbar{
                        Button(action: {
                            openModal.toggle()
                        }) {
                            Image(systemName:"plus")
                        }.sheet(isPresented: $openModal) {
                            NewEventModal()
                        }
                    }
            }
            .frame(height:200)
            Picker("Data Range", selection: $selection) {
                Text("Monthly").tag(dataRange.Monthly)
                Text("Yearly").tag(dataRange.Yearly)
                Text("YTD").tag(dataRange.YTD)
            }
            .pickerStyle(.segmented)
            .padding()
            PieChartView(
                values: returnValues(selection: self.selection),
                names: ["Doctors", "Lawyers", "Medicine"],
                formatter: {value in String(format: "$%.2f", value)},
                colors: [Color.myColor1, Color.myColor2, Color.myColor3],
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
    @State var list: [String] = [ "5", "6", "11", "12", "13", "29", "30", "31", "1", "31"]
    @State var colorSwitch: Bool = false;
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(list, id: \.self) {
                    list in Image(systemName: list + ".circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color.myColor2)
                        .background(Color.white)
                        .cornerRadius(30)
                        .shadow(color: Color.gray, radius: 3, x: 0, y: 2)
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
