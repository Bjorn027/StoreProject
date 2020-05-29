//
//  featured.swift
//  StoreProject
//
//  Created by Shawn on 2020-05-29.
//  Copyright © 2020 Shawn. All rights reserved.
//

import Foundation
import SwiftUI

struct FeaturedView : View{
    var headerText : String
    var titleText : String
    var subText : String
    var image : String
    var body : some View {
        VStack(alignment: .leading) {
            Text(headerText).font(.caption).foregroundColor(.blue)
            Text(titleText)
            Text(subText).font(.subheadline).foregroundColor(.gray)
            Image(image).resizable().frame(width:( UIApplication.shared.windows.first?.frame.width ?? 0) - 20, height:200, alignment: .center).cornerRadius(10)
            
            }.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading).padding(10)
    }
}

struct FeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedView(headerText: "Featured Content", titleText: "The Witcher 3: Mobile", subText: "I wish this was real", image: "witcher")
    }
}

