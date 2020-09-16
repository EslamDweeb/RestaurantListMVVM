//
//  ViewController.swift
//  RestaurantListMVVM
//
//  Created by eslam dweeb on 9/16/20.
//  Copyright © 2020 eslam dweeb. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    private func setupView(){
        title = "RestaurantList"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .red
    }

}

