//
//  Data.swift
//  StoreProject
//
//  Created by Shawn on 2020-06-04.
//  Copyright © 2020 Shawn. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

struct Task : Identifiable {
    var id = String()
    var gameItem = String()
    
    
}

class TaskStore : ObservableObject {
    @Published var tasks = [Task]()
}
