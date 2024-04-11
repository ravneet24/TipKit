//
//  SmartTip.swift
//  TipKitDemo
//
//  Created by Ravneet Arora on 11/04/24.
//

import Foundation
import TipKit

struct SmartTip: Tip {
    //Define the App state which you want to track
    @Parameter
    static var isLoggedInUser: Bool = false
    
    // Define the user interaction you want to track.
    static let enteredView = Event(id: "enteredView")
    
    var title: Text {
        Text("Tip with Strict Rules")
    }
    
    var message: Text? {
        Text("You are eligible to see me.")
    }
    
    var rules: [Rule] {
        [
            // Define a rule based on the app state.
            #Rule(Self.$isLoggedInUser) {
                // Set the conditions for when the tip displays.
                $0 == true
            },
            // Define an event-based rule tracking user state.
            #Rule(Self.enteredView) {
                    // Set the conditions for when the tip displays.
                $0.donations.count >= 3
            }
        ]
    }
    
    var options: [any TipOption] {
       [MaxDisplayCount(2)]
    }
    
}
