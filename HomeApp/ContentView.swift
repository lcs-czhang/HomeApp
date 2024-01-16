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
    let lightGray = Color(
        hue: 0.0/360.0,
        saturation: 0.0,
        brightness: 0.8
    )
    let transparentBlack = Color(
        hue: 0.0/360.0,
        saturation: 0.0,
        brightness: 1.0
    )
        .opacity(0.2)
    var body: some View {
        NavigationStack {
            ZStack{
                Image("homeBackground")
                    .resizable()
                    .ignoresSafeArea()
                Rectangle()
                    .opacity(0.1)
                    .foregroundStyle(.black)
                    .ignoresSafeArea()
                VStack {
                    VStack(alignment: .leading){
                        ScrollView(.horizontal) {
                            HStack {
                                HomeBarElement(imageName: "fan.fill", imageColor: lightBlue, elementType: "Climate", elementState: "16.0-20.5º")
                                HomeBarElement(imageName: "lock.fill", imageColor: lightGreen, elementType: "Sercurity", elementState: "No Alerts")
                                HomeBarElement(imageName: "tv.and.hifispeaker.fill", imageColor: .white, elementType: "Speaker", elementState: "None Play")
                            }
                            .frame(height: 50.0)
                        }
                        .padding(.top, 20.0)
                        HStack{
                            Text("Favorites")
                                .font(.title2)
                                .fontWeight(.bold)
                        }
                        .padding(.top)
                        HStack{
                            favoritesBarElement(imageName: "door.garage.closed", imageColor: lightGreen, elementName: "Garage", elementType: "Door", elementState: "Closed")
                            temperature(text: "17.5º", elementName: "Hallway", elementType: "Nest", elementState: "Heat to 12º")
                        }
                        HStack{
                            favoritesBarElement(imageName: "lock.fill", imageColor: lightGreen, elementName: "Living Room", elementType: "Front Door", elementState: "Locked")
                            favoritesBarElement(imageName: "lock.fill", imageColor: lightGreen, elementName: "Side Door", elementType: "Door", elementState: "Locked")
                        }
                        Button(action:{}){
                            Text("Basement")
                                .foregroundStyle(.white)
                                .font(.title2)
                                .bold()
                            Image(systemName: "chevron.right")
                                .foregroundStyle(.gray)
                                .bold()
                                .font(.title2)
                        }
                        .padding(.top)
                        HStack{
                            electricity(imageName: "poweroutlet.type.b.fill", imageColor: .white, elementType: "Network", elementState: "On")
                            electricity(imageName: "poweroutlet.type.b.fill", imageColor: .white, elementType: "Network", elementState: "On")
                        }
                        HStack{
                            bigChunk(imageName: "lock.fill", imageColor: lightGreen, elementType: "Side Door", elementState: "Locked")
                            VStack{
                                device(imageName: "square.fill", imageColor: transparentBlack, imageText: "tv", elementType: "Apple TV", elementState: "Not Playing")
                                device(imageName: "homepodmini.fill", imageColor: .white, imageText: "", elementType: "HomePod", elementState: "Not Playing")
                            }
                        }
                    }
                    .padding(8.5)
                    Rectangle()
                        .ignoresSafeArea()
                        .foregroundStyle(.black)
                        .opacity(0.2)
                        .frame(height: 30.0)
                }
            }
            .navigationTitle("My Home")
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
