//
//  FavouriteCoffeeList.swift
//  TipKitDemo
//
//  Created by Ravneet Arora on 09/04/24.
//

import SwiftUI

struct FavouriteCoffeeList: View {
    @Environment(CoffeeStore.self) var coffeeStore: CoffeeStore
    
    var body: some View {
        List(coffeeStore.favoriteCoffeeList) { coffee in
            NavigationLink {
                CoffeeDetail(coffee: coffee)
            } label: {
                Text("\(coffee.name) is my Favourite ❤️")
            }
            }
            .navigationTitle("Favourites")
    }
}

#Preview {
    FavouriteCoffeeList()
        .environment(CoffeeStore())
}
