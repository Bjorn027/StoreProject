//
//  ContentView.swift
//  StoreProject
//
//  Created by Shawn on 2020-05-28.
//  Copyright © 2020 Shawn. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    @State var selected : Int = 0
    var body: some View {
        TabView(selection: $selected){
            TodayView().tabItem{
                Text("Today")
            }.tag(0)
            GamesView().tabItem{
                Text("Games")
            }.tag(1)
            FavouritesView().tabItem{
                Text("Favourites")
            }.tag(2)
        }
        .onAppear() {
            UITabBar.appearance().backgroundColor = .green
        }.accentColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
