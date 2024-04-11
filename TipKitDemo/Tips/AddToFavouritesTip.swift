//
//  AddToFavouritesTip.swift
//  TipKitDemo
//
//  Created by Ravneet Arora on 11/04/24.
//

import Foundation
import TipKit

struct AddToFavouritesTip: Tip {
    var title: Text {
        Text( "Save as a favourite")
    }
    
    var message: Text? {
        Text( "Add this coffee to your Favourites")
    }
    
    var image: Image? {
        Image(systemName: "star")
    }
}
