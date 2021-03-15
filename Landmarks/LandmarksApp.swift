//
//  LandMarksApp.swift
//  LandMarks
//
//  Created by rrli  on 2021/3/3.
//

import SwiftUI

@main
struct LandMarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
