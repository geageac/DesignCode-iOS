//
//  SuccessView.swift
//  DesignCode
//
//  Created by Stanley Traub on 9/9/20.
//  Copyright © 2020 Stanley Traub. All rights reserved.
//

import SwiftUI

struct SuccessView: View {
    var body: some View {
        VStack {
            Text("Logging you...")
                .font(.title).bold()
            
            LottieView(filename: "success")
                .frame(width: 300, height: 300)
        }
        .background(BlurView(style: .systemMaterial))
        .clipShape(RoundedRectangle(cornerRadius: 34, style: .continuous))
        .shadow(color: Color.black.opacity(<#T##opacity: Double##Double#>), radius: <#T##CGFloat#>, x: <#T##CGFloat#>, y: <#T##CGFloat#>)
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
}
