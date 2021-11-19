//
//  PageView.swift
//  afterus (iOS)
//
//  Created by Rodolfo Pigna on 19/11/21.
//

import SwiftUI

struct PageView<Page:View>: View {
    
    var viewControllers: [UIHostingController<Page>]
    
    init( views: [Page]) {
        self.viewControllers = views.map {UIHostingController(rootView: $0)}
    }
    
    
    
    var body: some View {
        PageViewController(controllers: viewControllers)
    }
}

struct PageView_Previews: PreviewProvider{
    static var previews: some View{
        PageView(views: cards.map { OnBoardingCradView(card: $0)})
    }
}
