//
//  MapView.swift
//  MyApp
//
//  Created by Austin Wheeler on 10/27/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    var landmark: Landmark
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: landmark.locationCoordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(landmark: landmarks[1])
}
