//
//  LandmarkList.swift
//  MyApp
//
//  Created by Austin Wheeler on 10/27/23.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly: Bool = false
    
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
                
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
