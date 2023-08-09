// FruitListItem.swift
// Copyright (c) 2023 YUMASH GLOBAL SERVICES
// Created by HERYORDEJY on 8/9/23.

import SwiftUI

struct FruitListItem: View {
    var item: FruitModel = fruitsData[2]

    var body: some View {
        Button(action: {
            print("otilor")
        }) {
            HStack {
                ZStack {
//                    IMAGE
                    Image(item.image)
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .shadow(
                            color: Color(
                                red: 0,
                                green: 0,
                                blue: 0,
                                opacity: 0.3
                            ),
                            radius: 3,
                            x: 2,
                            y: 2
                        )
                        .frame(
                            width: 80,
                            height: 80,
                            alignment: .center
                        )
                }
                .background(
                    LinearGradient(
                        colors: item.gradientColors,
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .cornerRadius(8)
//                .frame(
//                    width: 100,
//                    height: 100,
//                    alignment: .center
//                )
                VStack(alignment: .leading, spacing: 5) {
//                    TITLE
                    Text(item.title)
                        .font(.title2)
                        .fontWeight(.bold)

//                    HEADLINE
                    Text(item.headline)
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 14))
//                        .font(.custom("Georgia", size: 14, relativeTo: .caption))
                        .fontWeight(.light)
                        .foregroundColor(.gray)
                }.frame(width: .infinity,
                        height: .infinity,
                        alignment: .topLeading)
                
//                CHEVRON ICOn
                Image(systemName: "chevron.right").foregroundColor(Color.gray)
            }
//            .padding(.horizontal, 16)
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   minHeight: 0,
                   maxHeight: 150)
//             .background(Color.red)
        }
    }
}

struct FruitListItem_Previews: PreviewProvider {
    static var previews: some View {
        FruitListItem().previewLayout(.sizeThatFits).padding()
    }
}
