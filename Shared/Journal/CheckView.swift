//
//  CheckView.swift
//  afterus
//
//  Created by Marina Sessa on 15/11/21.
//

import Foundation
import SwiftUI

struct CheckView: View{
    var body: some View{
        Text("Ilaria")
        //        .padding()
        Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
            Text("ciao ciro").tag(1)
            Text("ti amo").tag(2)
        }.pickerStyle(.segmented)
    }
    
}
struct CheckView_Previews: PreviewProvider {
    static var previews: some View {
        CheckView()
        
    }
}
