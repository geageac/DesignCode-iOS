//
//  LoadingView.swift
//  DesignCode
//
//  Created by Stanley Traub on 9/9/20.
//  Copyright © 2020 Stanley Traub. All rights reserved.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack {
            LottieView(filename: "loading")
                .frame(width: 200, height: 200)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
