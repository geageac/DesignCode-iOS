//
//  CourseStore.swift
//  DesignCode
//
//  Created by Stanley Traub on 9/1/20.
//  Copyright © 2020 Stanley Traub. All rights reserved.
//

import SwiftUI
import Contentful
import Combine

let client = Client(spaceId: "v1waxzprhsj6", accessToken: "PTUAXdCGaxiDdlDIi3D2SAeCafI2fBupdC-QO6WFSTs")

func getArray(id: String, completion: @escaping ([Entry]) -> ()) {
    let query = Query.where(contentTypeId: id)
    
    client.fetchArray(of: Entry.self, matching: query) { result in
        switch result {
        case .success(let array):
            DispatchQueue.main.async {
                completion(array.items)
            }
        case .failure(let error):
            print(error)
        }
    }
}

class CourseStore: ObservableObject {
    @Published var courses: [Course] = courseData
    
    init() {
        let colors = [#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1), #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1), #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1), #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1), #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1), #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)]
        var index = 0
        
        getArray(id: "course") { items in
            items.forEach { item in
                self.courses.append(Course(
                    title: item.fields["title"] as! String,
                    subtitle: item.fields["subtitle"] as! String,
                    image: item.fields.linkedAsset(at: "image")?.url ?? URL(string: "")!,
                    logo: #imageLiteral(resourceName: "Logo1"),
                    color: colors[index],
                    show: false))
                
                index += 1
            }
        }
    }
}
