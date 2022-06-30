//
//  Image42School.swift
//  Swifty Companion
//
//  Created by Jules Beal on 01/09/2021.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 250, height: 250)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CircleImage(image: Image("Image42School"))
                .preferredColorScheme(.dark)
        }
    }
}
