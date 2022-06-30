//
//  LandmarkRow.swift
//  Swifty Companion
//
//  Created by Jules Beal on 02/09/2021.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
            
            if (landmark.isFavorite) {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[1])
            LandmarkRow(landmark: landmarks[2])
        }
        .preferredColorScheme(.dark)
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
