//
//  DrinksList.swift
//  TipKitDemo
//
//  Created by Ravneet Arora on 09/04/24.
//

import SwiftUI
import TipKit

struct CoffeeMenuList: View {
    @Environment(CoffeeStore.self) var coffeeStore: CoffeeStore
    
    var body: some View {
        
        NavigationStack {
            
            //  --------------- Inline Tip -------------------------
            
            //                        TipView(ListOfFavouritesTip())
            //                            .padding()
            //                            .tipBackground(.yellow)
            //
            
            //  --------------- Tip with action -------------------------
            
            //            TipView(ListOfFavouritesTip(), action: { action in
            //                if action.id == "favourite-list-action" {
            //                    print("Favourite List Action")
            //                }
            //            })
            //            .padding()
            //            .tipBackground(.yellow)
            
            //  --------------- Customize Tip Appearance  with TipViewStyle -------------------------
            TipView(ListOfFavouritesTip())
                .padding()
                .tipBackground(.yellow)
                .tipViewStyle(HeadlineTipViewStyle())
            
            // --------------------------------------------------------------------------------------
            
            List(coffeeStore.coffeeMenu) { coffee in
                NavigationLink {
                    CoffeeDetail(coffee: coffee)
                } label: {
                    CoffeeRow(coffee: coffee)
                }
                
            }
            .navigationTitle("Coffee Menu")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: FavouriteCoffeeList()) {
                        Text("Favourites")
                            .foregroundStyle(.yellow)
                    }
                    // Popover Tip
                    // .popoverTip(ListOfFavouritesTip())
                }
            }
        }
    }
}

#Preview {
    CoffeeMenuList()
        .environment(CoffeeStore())
}
