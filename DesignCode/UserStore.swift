//
//  UserStore.swift
//  DesignCode
//
//  Created by Stanley Traub on 9/11/20.
//  Copyright © 2020 Stanley Traub. All rights reserved.
//

import SwiftUI
import Combine

class UserStore: ObservableObject {
    @Published var isLogged: Bool = UserDefaults.standard.bool(forKey: "isLogged") {
        didSet {
            UserDefaults.standard.set(self.isLogged, forKey: "isLogged")
        }
    }
    @Published var showLogin = false 
}
