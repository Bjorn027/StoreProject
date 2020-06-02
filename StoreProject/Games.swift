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
                FeaturedView(headerText: "Featured Content", titleText: "Final Fantasy VII Remake", subText: "Only on PS4 for now", image: "ff7")
                FeaturedView(headerText: "Featured Content", titleText: "Marvel's Spider-Man", subText: "One of the Best Games of 2018", image: "spider")
                FeaturedView(headerText: "Featured Content", titleText: "Knights of the Old Republic News", subText: "We may be getting a KOTOR 3!", image: "kotor")
                FeaturedView(headerText: "Featured Content", titleText: "Half Life 3", subText: "Is it coming?", image: "halflife")
                }
            })
            Divider()
            VStack(alignment: .leading){
            HStack{
                VStack(alignment: .leading){
                    Text("This Weeks Games").foregroundColor(.blue).padding()
                }}}
            
            HorizontalScrollView(items: self.gameStore.todaysGames)
        }
    }
}
}

struct GameStore  {
    var todaysGames = [GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "An Addictive Car Soccer Game"),GameData(id: UUID(), name: "Borderlands 3", image: "borderlands", subtitle: "The latest Loot-Shooter from Gearbox"),GameData(id: UUID(), name: "Shadow of Mordor", image: "mordor", subtitle: "One of the best Lord Of The Rings Games ever"),GameData(id: UUID(), name: "Hollow Knight", image: "hollow", subtitle: "One of the best Metroidvania style games ever"),GameData(id: UUID(), name: "Fallout 4", image: "fallout", subtitle: "Experience surviving in a post apocalyptic Boston"),GameData(id: UUID(), name: "Dragon Quest IX", image: "dragon", subtitle: "The 11th installment of the Dragon Quest series"),GameData(id: UUID(), name: "Grand Theft Auto V", image: "gta5", subtitle: "With GTA 6 around the corner, why not try out the last installment"),GameData(id: UUID(), name: "Civilization VI", image: "civ6", subtitle: "Check out the newest expantion that includes Canada"),GameData(id: UUID(), name: "Life Is Strange", image: "life", subtitle: "A great Adventure game from SquareEnix"),GameData(id: UUID(), name: "Skyrim", image: "skyrim", subtitle: "The lastest installment of the ElderScrolls franchise"),GameData(id: UUID(), name: "Resident Evil 3 Remake", image: "re3", subtitle: "Great Remake of an altime classic suvival horror game"),GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),GameData(id: UUID(), name: "Rocket League", image: "rocketLeague", subtitle: "Car Ball"),]
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
