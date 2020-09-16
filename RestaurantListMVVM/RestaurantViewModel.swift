//
//  RestaurantViewModel.swift
//  RestaurantListMVVM
//
//  Created by eslam dweeb on 9/16/20.
//  Copyright © 2020 eslam dweeb. All rights reserved.
//

import Foundation
struct RestaurantViewModel {
    
    private let restaurant:Restaurant
    var displayText:String {
        return restaurant.name + " - " + restaurant.cuisine.rawValue.capitalized
    }
    init(restaurant:Restaurant) {
        self.restaurant = restaurant
    }
}
