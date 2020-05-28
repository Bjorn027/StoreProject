//
//  TabBar.swift
//  StoreProject
//
//  Created by Shawn on 2020-05-28.
//  Copyright © 2020 Shawn. All rights reserved.
//

import Foundation
import SwiftUI

struct TabBarView: View {
    @State var selected : Int = 0
    var body: some View {
        TabView(selection: $selected){
            TodayView().tabItem{
                Text("Today")
            }
            GamesView().tabItem{
                Text("Games")
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
