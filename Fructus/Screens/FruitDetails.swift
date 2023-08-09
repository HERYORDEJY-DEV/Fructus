//
//  FruitDetails.swift
//  Fructus
//
//  Created by  OYEBODE YUSUF AYODEJI on 8/9/23.
//

import SwiftUI

struct FruitDetails: View {
//    PROPERTIES
    var fruit: FruitModel = fruitsData[4]
    var nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins"]
    @State private var isAnimating: Bool = false

    let gray0 = Color(hex: "3f")
    let gray1 = Color(hex: "#69")
    let gray2 = Color(hex: "#6911")
    let gray3 = Color(hex: "fff")
    let red = Color(hex: "#FF000044s")
    let green = Color(hex: "#00FF00")
    let blue0 = Color(hex: "0000FF")
    let blue1 = Color(hex: "0000F")

//    BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ZStack {
                    LinearGradient(
                        colors: fruit.gradientColors,
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    Image(fruit.image)
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .shadow(color: Color(hex: "#00000015"), radius: 8, x: 2, y: 2)
                        .padding()
                        .scaleEffect(isAnimating ? 1.0 : 0.6)
                }
//                .background(LinearGradient(
//                    colors: fruit.gradientColors,
//                    startPoint: .top,
//                    endPoint: .bottom
//                ))
                .frame(width: .infinity, height: 440)

                VStack(alignment: .center) {
                    VStack(alignment: .leading, spacing: 20, content: {
                        Text(fruit.title)
                            .fontWeight(.heavy)
                            .font(.largeTitle)
                            .multilineTextAlignment(.leading)
//                            .padding(.vertical)
                            .foregroundColor(fruit.gradientColors[1])

                        Text(fruit.headline)
                            .font(.headline)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)

//                        NUTRIENT DISCLOSURE
                        GroupBox {
                            DisclosureGroup("Nutritional Value per 100g") {
                                ForEach(0 ..< nutrients.count, id: \.self) { nutrient in
                                    Divider().padding(.vertical, 2.5)
                                    HStack {
                                        HStack {
                                            Image(systemName: "info.circle")
                                            Text(nutrients[nutrient])
                                        }.foregroundColor(Color(hex: "#FFC324")).fontWeight(.bold)
                                        Spacer(minLength: 30)

                                        VStack {
                                            Text(fruit.nutrition[nutrient]).multilineTextAlignment(.trailing)
                                        }
                                    }
                                }
                            }
                        }

                        Text("LEARN MORE ABOUT \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .font(.system(size: 18))
                            .multilineTextAlignment(.leading)
                            // .padding(.vertical, 5)
                            .foregroundColor(fruit.gradientColors[1])
//                            .textCase(.uppercase)

                        Text(fruit.description)
                            // .font(.system(size: 14))
                            .multilineTextAlignment(.leading)

                        GroupBox {
                            HStack {
                                Text("Content")
                                Spacer()
                                Link(destination: URL(string: "htpps://www.wikipedia.com")!, label: {
                                    HStack {
                                        Text("Wikipedia")
                                        Image(systemName: "arrow.up.right.square")
                                    }
                                })
                            }
                        }.font(.footnote)
                            .padding(.vertical)
                    })
                    .frame(maxWidth: 640, alignment: .center)
                    .padding(.horizontal)
                    .padding(.bottom, 30)
                }
            }
            .edgesIgnoringSafeArea(.top)
            .onAppear {
                withAnimation(.easeOut(duration: 0.5)) {
                    isAnimating = true
                }
            }
        }
    }
}

struct FruitDetails_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetails(fruit: fruitsData[3])
    }
}
