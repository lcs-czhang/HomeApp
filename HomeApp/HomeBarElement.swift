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
        HStack{
            Image(systemName: imageName)
                .foregroundColor(imageColor)
                .padding(.leading, 10.0)
            VStack(alignment: .leading){
                Text(elementType)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                Text(elementState)
                    .font(.subheadline)
                    .fontWeight(.regular)
                    .foregroundColor(Color.gray)
            }
            .padding(.trailing, 20.0)
        }
        .padding(.vertical, 5.0)
        .background(.black.opacity(0.3))
            .cornerRadius(255)
    }
}

#Preview {
    HomeBarElement(imageName: "fan.fill", imageColor: lightBlue, elementType: "Climate", elementState: "16.0-20.5º")
}
