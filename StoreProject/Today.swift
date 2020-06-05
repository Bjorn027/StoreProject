//
//  Today.swift
//  StoreProject
//
//  Created by Shawn on 2020-05-28.
//  Copyright © 2020 Shawn. All rights reserved.
//

import Foundation
import SwiftUI

struct TodayView: View {
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
            HStack{
                VStack(alignment: .leading){
                    Text("Today").font(Font.largeTitle).bold()
            }
                Spacer()
                Image("Profile").resizable().frame(width: 40, height: 35, alignment: .trailing)
                }.padding()
                HighlightView(catagory: "Picturesque", title: "Lonesome Highway", message: "Phoenix, Arizona", pic: "highway").frame(height: 500, alignment: .leading)
                HighlightView(catagory: "Tanquil", title: "Okanagan Lake", message: "Kelowna, British Columbia", pic: "lake").frame(height: 500, alignment: .leading)
                HighlightView(catagory: "Crisp", title: "Moraine Lake", message: "Banff, Alberta", pic: "crisp").frame(height: 500, alignment: .leading)
                HighlightView(catagory: "Stunning", title: "Eiffel Tower", message: "Paris, France", pic: "paris").frame(height: 500, alignment: .leading)
                HighlightView(catagory: "Inspiring", title: "Mount Everest", message: "Napal/China", pic: "everest").frame(height: 500, alignment: .leading)
                HighlightView(catagory: "Home", title: "Hopewell Rocks", message: "New Brunswick, Canada", pic: "hopewell").frame(height: 500, alignment: .leading)
    }
   }
 }
}

struct HighlightView: View {
    var catagory : String
    var title : String
    var message : String
    var pic : String
    var body : some View{
        VStack{
        ZStack {
            Image(pic).resizable()
            LinearGradient(gradient: Gradient(colors: [.clear,Color.black.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
            VStack{
                Text(catagory).foregroundColor(Color.black.opacity(0.5)).bold()
                Text(title).foregroundColor(.black).bold()
                Spacer()
                Text(message).foregroundColor(.white).bold()
            }.padding()
        }
            }.cornerRadius(30).padding()
}
}
struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
