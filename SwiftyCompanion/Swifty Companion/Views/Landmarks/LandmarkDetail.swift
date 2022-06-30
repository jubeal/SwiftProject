//
//  LandmarkDetail.swift
//  Swifty Companion
//
//  Created by Jules Beal on 03/09/2021.
//

import SwiftUI
import MapKit

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                HStack {
                    Text(landmark.city)
                        .fontWeight(.regular)
                    Text(landmark.state)
                        .fontWeight(.thin)
                }
                .font(.subheadline)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
                    .fontWeight(.thin)
            }
            
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[1])
            .environmentObject(modelData)
    }
}
