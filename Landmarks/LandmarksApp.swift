//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Austie Chou on 3/24/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
