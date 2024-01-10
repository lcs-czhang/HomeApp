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
            .accentColor(.white)
            .preferredColorScheme(.dark)
        }
    }
}
