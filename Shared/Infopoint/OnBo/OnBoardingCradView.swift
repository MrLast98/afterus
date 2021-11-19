//
//  OnBoardingCradView.swift
//  afterus (iOS)
//
//  Created by Rodolfo Pigna on 19/11/21.
//

import SwiftUI

struct OnBoardingCradView: View {
    var card: OnBoardingCard
    var body: some View {
   
        VStack {
            Image(card.image)
            
            
                
          
            
           
}
    }
struct OnBoardingCradView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingCradView(card: cards[1])
    }
}
}

