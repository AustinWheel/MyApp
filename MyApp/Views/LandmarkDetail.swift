//
//  LandmarkDetail.swift
//  MyApp
//
//  Created by Austin Wheeler on 10/27/23.
//

import SwiftUI

struct LandmarkDetail: View {
    let height: CGFloat = 300
    let offset: CGFloat = -130
    var landmark: Landmark
    var body: some View {
        ScrollView {
            MapView(landmark: landmark)
                .frame(height: height)
            CircleImage(landmark: landmark)
                .offset(y: offset)
                .padding(.bottom, offset)
            VStack (alignment: .leading) {
                Text("\(landmark.name)!")
                    .font(.title)
                    .foregroundColor(.green)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }.padding()
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[1])
}
