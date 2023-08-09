// FructusApp.swift
// Copyright (c) 2023 YUMASH GLOBAL SERVICES
// Created by HERYORDEJY on 8/7/23.

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") private var isOnboarding: Bool = true

    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                Onboarding()
            } else {
                ContentView()
            }
        }
    }
}
