//
//  UpdateStore.swift
//  DesignCode
//
//  Created by Stanley Traub on 8/29/20.
//  Copyright © 2020 Stanley Traub. All rights reserved.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
}
