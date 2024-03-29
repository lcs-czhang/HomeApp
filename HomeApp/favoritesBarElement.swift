//
//  favoritesBarElement.swift
//  HomeApp
//
//  Created by Yuzhou Zhang on 2024-01-11.
//

import SwiftUI

let lightGreen = Color(
    hue: 175.0/360.0,
    saturation: 1.0,
    brightness: 1.0
)
struct favoritesBarElement: View {
    let imageName: String
    let imageColor: Color
    let elementName: String
    let elementType: String
    let elementState: String
    let lightYellow = Color(
        hue: 50.0/360.0,
            saturation: 1.0,
            brightness: 1.0
        )
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(20)
                .foregroundColor(.black)
                .opacity(0.3)
            HStack{
                ZStack {
                    Circle()
                        .frame(width: 40.0)
                        .foregroundColor(.black)
                        .opacity(0.1)
                    Image(systemName: imageName)
                        .font(.title3)
                        .foregroundColor(imageColor)
                }
                .padding(.leading)
                VStack(alignment: .leading){
                    Text(elementName)
                        .font(.callout)
                        .fontWeight(.regular)
                        .foregroundColor(lightGray)
                    Text(elementType)
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    Text(elementState)
                        .font(.callout)
                        .fontWeight(.regular)
                        .foregroundColor(lightGray)
                }
                Spacer()
            }
            .padding(.vertical, 10.0)
        }
        .padding(2.0)
    }
}

#Preview {
    favoritesBarElement(imageName: "door.garage.closed", imageColor: lightGreen, elementName: "Garage", elementType: "Door", elementState: "Closed")
}

