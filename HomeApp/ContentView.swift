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
        hue: 180.0/360.0,
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
            VStack(alignment: .leading) {
                HStack{
                    Spacer()
                    Image(systemName: "waveform")
                    Image(systemName: "plus")
                    Image(systemName: "ellipsis.circle")
                }
                Text("My Home")
                    .font(.title)
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
