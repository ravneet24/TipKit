//
//  Drink.swift
//  TipKitDemo
//
//  Created by Ravneet Arora on 09/04/24.
//

import Foundation


struct Coffee: Identifiable {
    let name: String
    let imageName: String
    let id: Int
    
    var isFavourite: Bool = false
}
