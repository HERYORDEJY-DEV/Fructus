// Onboarding.swift
// Copyright (c) 2023 YUMASH GLOBAL SERVICES
// Created by HERYORDEJY on 8/9/23.

import SwiftUI

struct Onboarding: View {
//    PROPERTIES

//    BODY
    var body: some View {
        TabView {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { _ in
                FruitCard()
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
