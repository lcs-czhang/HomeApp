//
//  basementBarElement.swift
//  HomeApp
//
//  Created by Yuzhou Zhang on 2024-01-15.
//

import SwiftUI
let lightYellow = Color(
    hue: 50.0/360.0,
        saturation: 1.0,
        brightness: 1.0
    )
struct electricity: View {
    let imageName: String
    let imageColor: Color
    let elementType: String
    let elementState: String
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(20)
                .foregroundColor(.white)
                .opacity(0.9)
            HStack{
                ZStack {
                    Circle()
                        .frame(width: 40.0)
                        .foregroundColor(lightYellow)
                    Image(systemName: imageName)
                        .font(.title3)
                        .foregroundColor(imageColor)
                }
                VStack(alignment: .leading){
                    Text(elementType)
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                    Text(elementState)
                        .font(.callout)
                        .fontWeight(.regular)
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            .padding([.top, .leading, .bottom], 10.0)
        }
        .padding(2.0)
    }
}

#Preview {
    electricity(imageName: "poweroutlet.type.b.fill", imageColor: .white, elementType: "Network", elementState: "On")
}
