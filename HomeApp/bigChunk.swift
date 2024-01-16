//
//  bigChunk.swift
//  HomeApp
//
//  Created by Yuzhou Zhang on 2024-01-15.
//

import SwiftUI

struct bigChunk: View {
    let imageName: String
    let imageColor: Color
    let elementType: String
    let elementState: String
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(20)
                .foregroundColor(.black)
                .opacity(0.3)
            VStack(alignment: .leading){
                HStack {
                    ZStack {
                        Circle()
                            .scaledToFill()
                            .foregroundColor(.black)
                            .opacity(0.1)
                        Image(systemName: imageName)
                            .font(.title3)
                            .foregroundColor(imageColor)
                    }
                    .frame(width: 40.0)
                    Spacer()
                }
                Spacer()
                    .frame(height: 46.5)
                HStack {
                    Text(elementType)
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    Spacer()
                }
                HStack {
                    Text(elementState)
                        .font(.callout)
                        .fontWeight(.regular)
                        .foregroundColor(lightGray)
                    Spacer()
                }
            }
            .padding()
        }
        .padding(2.0)
    }
}

#Preview {
    bigChunk(imageName: "lock.fill", imageColor: lightGreen, elementType: "Side Door", elementState: "Locked")
}
