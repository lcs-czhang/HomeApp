//
//  temperature.swift
//  HomeApp
//
//  Created by Yuzhou Zhang on 2024-01-16.
//

import SwiftUI

struct temperature: View {
    let text: String
    let elementName: String
    let elementType: String
    let elementState: String
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(20)
                .foregroundColor(.white)
                .opacity(0.9)
            HStack{
                Text(text)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.leading)
                VStack(alignment: .leading){
                    Text(elementName)
                        .font(.callout)
                        .fontWeight(.regular)
                        .foregroundColor(.gray)
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
            .padding(.vertical, 10.0)
        }
        .padding(2.0)
    }
}

#Preview {
    temperature(text: "17.5º", elementName: "Hallway", elementType: "Nest", elementState: "Heat to 12.0º")
}
