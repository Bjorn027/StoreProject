//
//  HorizontalScroll.swift
//  StoreProject
//
//  Created by Shawn on 2020-06-01.
//  Copyright © 2020 Shawn. All rights reserved.
//

import Foundation
import SwiftUI

struct HorizontalScrollView : View {
    var items : [GameData]
    var body: some View {
        VStack{
            ScrollView(.horizontal, showsIndicators: false){
                ForEach(0 ..< 3){
                    row in
                    HStack{
                        ForEach(0 ..< self.items.count / 3){
                            column in
                            GameCell(data: self.items[self.determineCurrentCell(row: row, column: column)])
                        }
                    }
                }
            }
        }
    }
    func determineCurrentCell(row: Int, column : Int) -> Int {
        return ((((column + 1) * 3) - row) - 1)
    }
}

struct GameCell : View {
    var data : GameData
    var body: some View{
        HStack{
            Image(data.image).resizable().frame(width: 60, height: 60, alignment: .leading).cornerRadius(10)
            VStack(alignment: .leading){
                Text(data.name).font(Font.system(size: 20))
                Text(data.subtitle).font(.subheadline).foregroundColor(.gray)
            }
            Spacer()
            VStack(spacing: 5){
                Button(action: self.get, label: {Text("Get").padding(EdgeInsets.init(top:3, leading: 30, bottom: 3, trailing: 30))}).background(Color.gray.opacity(0.2))
            }
        }.padding(5).frame(width: 380, alignment: .leading).border(Color.gray.opacity(0.5))
    }
    func get(){
        
    }
}

struct HorizontalScroll_Previews: PreviewProvider {
    static var previews: some View{
        HorizontalScrollView(items: GameStore().todaysGames)
    }
}
