//
//  ListOfFavouritesTip.swift
//  TipKitDemo
//
//  Created by Ravneet Arora on 11/04/24.
//

import Foundation
import TipKit

struct ListOfFavouritesTip: Tip {
    var title: Text {
        Text( "Favourite List")
    }
    
    var message: Text? {
        Text( "Check your favourite list")
    }
}
