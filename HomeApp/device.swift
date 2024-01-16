//
//  device.swift
//  HomeApp
//
//  Created by Yuzhou Zhang on 2024-01-15.
//

import SwiftUI

struct device: View {
    let imageName: String
    let imageColor: Color
    let imageText: String
    let elementType: String
    let elementState: String
    var body: some View {
        ZStack{
            Rectangle()
                .cornerRadius(20)
                .foregroundColor(.black)
                .opacity(0.3)
            HStack{
                ZStack {
                    Image(systemName: imageName)
                        .resizable()
                        .foregroundColor(imageColor)
                        .frame(width: 35,height: 35)
                    Text(imageText)
                        .font(.callout)
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                }
                .padding(.trailing, 10.0)
                VStack(alignment: .leading){
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
            .padding()
        }
        .padding(2.0)
    }
}

#Preview {
    device(imageName: "square.fill", imageColor: lightGray, imageText: "tv", elementType: "Apple TV", elementState: "Not Playing")
}
