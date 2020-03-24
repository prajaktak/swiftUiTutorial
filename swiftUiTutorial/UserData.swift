//
//  UserData.swift
//  swiftUiTutorial
//
//  Created by Prajakta Kulkarni on 24/03/2020.
//  Copyright © 2020 Prajakta Kulkarni. All rights reserved.
//


import SwiftUI
import Combine

final class UserData: ObservableObject  {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
