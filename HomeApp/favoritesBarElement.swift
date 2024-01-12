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
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(20)
                .scaledToFit()
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
                VStack(alignment: .leading){
                    Text(elementName)
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(lightGray)
                    Text(elementType)
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    Text(elementState)
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(lightGray)
                }
            }
        }
        .padding(2.0)
    }
}

#Preview {
    favoritesBarElement(imageName: "door.garage.closed", imageColor: lightGreen, elementName: "Garage", elementType: "Door", elementState: "Closed")
}

