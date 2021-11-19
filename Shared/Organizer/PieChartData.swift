//
//  PieChartData.swift
//  afterus
//
//  Created by Emanuele Giunta on 18/11/21.
//

import Foundation
import SwiftUI

struct PieSliceView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct PieSliceData {
    var startAngle: Angle
    var endAngle: Angle
    var color: Color
}

struct PieSliceView_Previews: PreviewProvider {
    static var previews: some View {
        PieSliceView()
    }
}
