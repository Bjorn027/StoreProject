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
    var gameStore = GameStore()
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
            Divider()
            HorizontalScrollView(items: self.gameStore.todaysGames)
        }
    }
}
}

struct GameStore  {
    var todaysGames = [GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),]
}

struct GameData : Identifiable {
    var id = UUID()
    var name = String()
    var image = String()
    var subtitle = String()
}

struct GamesView_Previews: PreviewProvider {
    static var previews: some View {
        GamesView()
    }
}
