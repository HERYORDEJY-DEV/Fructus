//
//  FruitCard.swift
//  Fructus
//
//  Created by  OYEBODE YUSUF AYODEJI on 8/7/23.
//

import SwiftUI

struct FruitCard: View {
//    PROPERTIES

//    BODY
    var body: some View {
        ZStack {
            VStack {
                Image("blueberry")
                        .resizable()
                        .clipped()
                        .scaledToFit()

                        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)

//                TITLE
                Text("Blueberry")
                        .foregroundColor(Color.white).font(.largeTitle)
                        .fontWeight(.heavy)
                        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)

//                HEADLINE
                Text("Blueberries are sweet, nutritious and widly popular fruit all over the world.")
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 16)
                        .frame(maxWidth: 480)
            }
        }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
                .cornerRadius(20)
    }
}

struct FruitCard_Previews: PreviewProvider {
    static var previews: some View {
        FruitCard()
        //.previewLayout(.fixed(width: .infinity, height: 640))
    }
}
