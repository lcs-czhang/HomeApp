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
        NavigationStack {
            ZStack{
                Image("homeBackground")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    HStack {
                        Text("My Home")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding()
                        Spacer()
                    }
                    HStack {
                        HomeBarElement(imageName: "fan.fill", imageColor: lightBlue, elementType: "Climate", elementState: "16.0-20.5º")
                    }
                }
            }
            //.navigationTitle("My Home")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    Button(action: {},label: {
                        Image(systemName: "waveform")
                            .foregroundColor(Color.white)
                    })
                }
                ToolbarItem(placement: .topBarTrailing){
                    Button(action: {},label: {
                        Image(systemName: "plus")
                            .foregroundColor(Color.white);
                    })
                }
                ToolbarItem(placement: .topBarTrailing){
                    Button(action: {},label: {
                        Image(systemName: "ellipsis.circle")
                        .foregroundColor(Color.white);
                    })
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
