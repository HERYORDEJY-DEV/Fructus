// FruitModel.swift
// Copyright (c) 2023 YUMASH GLOBAL SERVICES
// Created by HERYORDEJY on 8/9/23.

import Foundation
import SwiftUI

struct FruitModel: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var gradientColors: [Color]
    var nutrition: [(String, String)]
    var image: String
    var headline: String
}
