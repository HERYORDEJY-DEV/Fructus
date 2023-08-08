// StartButton.swift
// Copyright (c) 2023 YUMASH GLOBAL SERVICES
// Created by HERYORDEJY on 8/8/23.

import SwiftUI

struct StartButton: View {
//    PROPERTIES

//    BODY
    var body: some View {
        Button(action: {
            print("Exit onboarding")
        }, label: {
            HStack {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)

            }.padding(.horizontal, 16)
                .padding(.vertical, 10)
        })
        .accentColor(.white)
        .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
    }
}

// PREVIEW
struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton().previewLayout(.sizeThatFits)
    }
}
