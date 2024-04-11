//
//  TipKitDemoApp.swift
//  TipKitDemo
//
//  Created by Ravneet Arora on 09/04/24.
//

import SwiftUI
import TipKit

@main
struct TipKitDemoApp: App {
    @State var coffeeStore = CoffeeStore()
    var body: some Scene {
        WindowGroup {
            CoffeeMenuList()
                .environment(coffeeStore)
        }
    }
    init() {
       //Testing Tip
     //   Tips.showAllTipsForTesting()

    // Reset Tips Datastore
        try? Tips.resetDatastore()
        
        //load and configure tips
        try? Tips.configure([
             .datastoreLocation(.applicationDefault),
             .displayFrequency(.immediate)
            ])
    }
}
