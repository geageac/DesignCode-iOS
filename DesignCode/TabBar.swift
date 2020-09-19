//
//  TabBar.swift
//  DesignCode
//
//  Created by Stanley Traub on 8/29/20.
//  Copyright © 2020 Stanley Traub. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            Home().tabItem {
                Image(systemName: "play.circle.fill")
                Text("Home")
            }
            CourseList().tabItem {
                Image(systemName: "rectangle.stack.fill")
                Text("Courses")
            }
        }
//        .edgesIgnoringSafeArea(.top)
        
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
//            TabBar().previewDevice("iPhone 8")
            TabBar().previewDevice("iPhone 11 Pro Max")
                .environmentObject(UserStore()) 

        }
    }
}
