//
//  Get.swift
//  StoreProject
//
//  Created by Shawn on 2020-06-04.
//  Copyright © 2020 Shawn. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

struct FavouritesView : View{
    @ObservedObject var taskStore = TaskStore()
    @State var newGame : String = ""
    var searchBar : some View{
        HStack{
            TextField("Search", text: self.$newGame)
            Button(action: self.addNewGame, label: {
                Text("Add")
            })
        }
    }
    
    func addNewGame(){
        taskStore.tasks.append(Task(id:String(taskStore.tasks.count + 1),gameItem: newGame ))
        self.newGame = ""
    }
    
    var body : some View {
        NavigationView{
        VStack{
            searchBar.padding()
            List{
                ForEach(self.taskStore.tasks){ task in
                    Text(task.gameItem)
                }.onMove(perform: self.move)
                    .onDelete(perform: self.delete)
            }.navigationBarTitle("Favourite Games")
                .navigationBarItems(trailing: EditButton())
            }
        }
    }
    
    func move(from source : IndexSet, to destination : Int) {
        taskStore.tasks.move(fromOffsets: source, toOffset: destination)
    }
    
    func delete(at offsets : IndexSet){
        taskStore.tasks.remove(atOffsets: offsets)
    }
}

struct Favourites_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesView()
    }
}
