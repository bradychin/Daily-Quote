//
//  Daily_QuoteApp.swift
//  Daily Quote
//
//  Created by Brady Chin on 11/13/22.
//

import SwiftUI

@main
struct Daily_QuoteApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
