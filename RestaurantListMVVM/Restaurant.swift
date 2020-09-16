//
//  Restaurant.swift
//  RestaurantListMVVM
//
//  Created by eslam dweeb on 9/16/20.
//  Copyright © 2020 eslam dweeb. All rights reserved.
//

import Foundation

struct Restaurant:Codable {
    let name:String
    let cuisine:Cuisine
}

enum Cuisine:String, Codable{
    case european
    case french
    case indian
    case maxican
    case english
}
