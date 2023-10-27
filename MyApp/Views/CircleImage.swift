//
//  CircleImage.swift
//  MyApp
//
//  Created by Austin Wheeler on 10/27/23.
//

import SwiftUI

struct CircleImage: View {
    var landmark: Landmark
    
    var body: some View {
        landmark.image
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(landmark: landmarks[1])
}
