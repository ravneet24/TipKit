//
//  DrinkRow.swift
//  TipKitDemo
//
//  Created by Ravneet Arora on 09/04/24.
//

import SwiftUI

struct CoffeeRow: View {
    let coffee: Coffee
    var body: some View {
            HStack {
                Image(systemName: coffee.imageName)
                    .foregroundStyle(.yellow)
                Text(coffee.name)
            }
    }
}

#Preview {
    CoffeeRow(coffee: CoffeeStore().coffeeMenu.first!)
}
