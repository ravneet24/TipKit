//
//  CoffeeDetail.swift
//  TipKitDemo
//
//  Created by Ravneet Arora on 09/04/24.
//

import SwiftUI
import TipKit

struct CoffeeDetail: View {
    @Environment(CoffeeStore.self) var coffeeStore: CoffeeStore
  
   @State var coffee: Coffee
   @State var isFavourite: Bool = false
   
    let addToFavouritesTip = AddToFavouritesTip()
    let smartTip = SmartTip()
    
    var body: some View {
        Text("Detail of \(coffee.name)")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button(action: {
                    coffeeStore.updateFavoriteStatus(for: coffee)
                    isFavourite.toggle()
                    //Invalidate Tip
                    addToFavouritesTip.invalidate(reason: .actionPerformed)
                }, label: {
                    Image(systemName: isFavourite ? "star.fill" : "star")
                        .foregroundColor(isFavourite ? .yellow : .gray)
                })
                //Popover Tip
                .popoverTip(addToFavouritesTip)
//                .popoverTip(smartTip)
            }
        }
        .onAppear {
            isFavourite = coffee.isFavourite
            SmartTip.isLoggedInUser = true
            SmartTip.enteredView.sendDonation()
        }
    }
}

#Preview {
    CoffeeDetail(coffee: CoffeeStore().coffeeMenu.first!)
        .environment(CoffeeStore())
}
