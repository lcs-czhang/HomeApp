//
//  HomeBarElement.swift
//  HomeApp
//
//  Created by Yuzhou Zhang on 2024-01-09.
//

import SwiftUI
let lightBlue = Color(
    hue: 190.0/360.0,
        saturation: 1.0,
        brightness: 1.0
    )
struct HomeBarElement: View {
    let imageName: String
    let imageColor: Color
    let elementType: String
    let elementState: String
    var body: some View {
        ZStack {
            Image("homeBackground")
            Capsule()
                .frame(width: 45.0, height: 125.0)
                .opacity(0.3)
                .rotationEffect(.init(degrees: 90))
            HStack{
                Image(systemName: imageName)
                    .foregroundColor(imageColor)
                VStack(alignment: .leading){
                    Text(elementType)
                        .font(.footnote)
                        .foregroundColor(Color.white)
                    Text(elementState)
                        .font(.footnote)
                        .foregroundColor(Color.gray)
                }
            }
        }
    }
}

#Preview {
    HomeBarElement(imageName: "fan.fill", imageColor: lightBlue, elementType: "Climate", elementState: "16.0-20.5º")
}
