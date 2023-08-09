// Onboarding.swift
// Copyright (c) 2023 YUMASH GLOBAL SERVICES
// Created by HERYORDEJY on 8/9/23.

import SwiftUI

struct Onboarding: View {
//    PROPERTIES
    var fruits: [FruitModel] = fruitsData

//    BODY
    var body: some View {
        TabView {
            ForEach(fruits[0 ... 5]) { fruit in
                FruitCard(fruitModel: fruit)
            }
        }.tabViewStyle(PageTabViewStyle())
            .padding(.vertical, 20)
    }
}

//    PREVIEW
struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
