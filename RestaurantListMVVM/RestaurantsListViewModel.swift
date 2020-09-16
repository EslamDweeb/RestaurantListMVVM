//
//  RestaurantsViewModel.swift
//  RestaurantListMVVM
//
//  Created by eslam dweeb on 9/16/20.
//  Copyright © 2020 eslam dweeb. All rights reserved.
//

import Foundation
import RxSwift

class RestaurantsListViewModel{
    let title = "RestaurantList"
    private let restaurantService:RestaurantServiceProtocol
    
    init(restaurantService:RestaurantServiceProtocol = RestaurantService()) {
        self.restaurantService = restaurantService
    }
    func fetchRestaurantViewModels() -> Observable<[RestaurantViewModel]>{
        restaurantService.fetchRestaurants().map{$0.map{
            RestaurantViewModel(restaurant: $0)
        }}
    }
}
