//
//  ContentView.swift
//  HomeApp
//
//  Created by Yuzhou Zhang on 2024-01-09.
//

import SwiftUI

struct ContentView: View {
    let lightBlue = Color(
        hue: 190.0/360.0,
            saturation: 1.0,
            brightness: 1.0
        )
    let lightGreen = Color(
        hue: 175.0/360.0,
            saturation: 1.0,
            brightness: 1.0
        )
    let lightYellow = Color(
        hue: 50.0/360.0,
            saturation: 1.0,
            brightness: 1.0
        )
    var body: some View {
        ZStack {
            Image("homeBackground")
                .resizable()
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                HStack{
                    Spacer()
                    Image(systemName: "waveform")
                        .foregroundColor(Color.white)
                    Image(systemName: "plus")
                        .foregroundColor(Color.white)
                    Image(systemName: "ellipsis.circle")
                        .foregroundColor(Color.white)
                }
                Text("My Home")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                HStack{
                    
                }
                    
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
