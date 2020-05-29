//
//  Games.swift
//  StoreProject
//
//  Created by Shawn on 2020-05-28.
//  Copyright © 2020 Shawn. All rights reserved.
//

import Foundation
import SwiftUI

struct GamesView: View {
    var body: some View {
        ScrollView{
        VStack(alignment: .leading){
        HStack{
            VStack(alignment: .leading){
                Text("Games").font(Font.largeTitle).bold()
        }
            Spacer()
            Image("Profile").resizable().frame(width: 40, height: 35, alignment: .trailing)
            }.padding()
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack{
                FeaturedView(headerText: "Featured Content", titleText: "Witcher 3: Mobile", subText: "I wish this was real", image: "witcher")
                FeaturedView(headerText: "Featured Content", titleText: "Witcher 3: Mobile", subText: "I wish this was real", image: "witcher")
                FeaturedView(headerText: "Featured Content", titleText: "Witcher 3: Mobile", subText: "I wish this was real", image: "witcher")
                FeaturedView(headerText: "Featured Content", titleText: "Witcher 3: Mobile", subText: "I wish this was real", image: "witcher")
                }
            })
        }
    }
}
}


struct GamesView_Previews: PreviewProvider {
    static var previews: some View {
        GamesView()
    }
}
