//
//  ContentView.swift
//  Swifty Companion
//
//  Created by Jules Beal on 27/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
                .environmentObject(ModelData())
        }
    }
}
