//
//  ContentView.swift
//  MyApp
//
//  Created by Austin Wheeler on 10/27/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack (alignment: .leading) {
                Text("Turtle Rock!")
                    .font(.title)
                    .foregroundColor(.green)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eleifend dolor bibendum, dictum nisi a, feugiat lorem. Ut ultricies mi eget ex finibus, quis elementum dui ornare. Quisque lobortis sit amet ipsum quis hendrerit.")
            }.padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
