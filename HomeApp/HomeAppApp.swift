//
//  HomeAppApp.swift
//  HomeApp
//
//  Created by Yuzhou Zhang on 2024-01-09.
//

import SwiftUI

@main
struct HomeAppApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .preferredColorScheme(.dark)
                    .tabItem {
                        Image (systemName: "house.fill")
                        Text ("Home")
                    }
                Text ("Automation")
                    .tabItem {
                        Image (systemName:"deskclock.fill")
                        Text ("Automation")
                    }
                Text("Discover")
                    .tabItem {
                        Image(systemName:"star.fill")
                        Text("Discover")
                    }
            }
            .tabViewStyle(/*@START_MENU_TOKEN@*/DefaultTabViewStyle()/*@END_MENU_TOKEN@*/)
            .accentColor(.white)
        }
    }
}
