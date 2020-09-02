//
//  DataStore.swift
//  DesignCode
//
//  Created by Stanley Traub on 9/1/20.
//  Copyright © 2020 Stanley Traub. All rights reserved.
//

import SwiftUI
import Combine

class DataStore: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        getPosts()
    }
    
    func getPosts() {
        API().getPosts { posts in
            self.posts = posts
        }
    }
}
