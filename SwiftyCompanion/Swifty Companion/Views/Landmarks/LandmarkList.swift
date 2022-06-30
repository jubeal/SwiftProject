//
//  LandmarkList.swift
//  Swifty Companion
//
//  Created by Jules Beal on 03/09/2021.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
                .navigationTitle("Landmarks")
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .preferredColorScheme(.dark)
            .environmentObject(ModelData())
//        ForEach(["iphone SE (2nd generation)", "iPhone XS Max", "iPad (8th generation)", "iPod (7th generation)"], id: \.self) { deviceName in
//        LandmarkList()
//            .preferredColorScheme(.dark)
//            .previewDevice(PreviewDevice(rawValue: deviceName))
//            .previewDisplayName(deviceName)
//        }
    }
}
