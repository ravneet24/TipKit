//
//  DrinkStore.swift
//  TipKitDemo
//
//  Created by Ravneet Arora on 09/04/24.
//

import Foundation

@Observable
class CoffeeStore {
    var coffeeMenu: [Coffee] = [
        Coffee(name: "Cappuccino", imageName: "cup.and.saucer.fill", id: 1),
        Coffee(name: "Latte", imageName: "mug.fill", id: 2),
        Coffee(name: "Espresso",imageName: "cup.and.saucer.fill", id: 3),
        Coffee(name: "Mocha",imageName: "cup.and.saucer.fill", id: 4),
        Coffee(name: "Americano",imageName: "cup.and.saucer.fill", id: 5),
        Coffee(name: "Macchiato",imageName: "cup.and.saucer.fill", id: 6)
    ]
    
    var favoriteCoffeeList: [Coffee] {
        coffeeMenu.filter { $0.isFavourite }
    }
    
    func updateFavoriteStatus(for coffee: Coffee) {
        if let index = coffeeMenu.firstIndex(where: { $0.id == coffee.id }) {
            coffeeMenu[index].isFavourite.toggle()
        }
    }
}
