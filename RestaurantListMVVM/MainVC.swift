//
//  ViewController.swift
//  RestaurantListMVVM
//
//  Created by eslam dweeb on 9/16/20.
//  Copyright © 2020 eslam dweeb. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class MainVC: UITableViewController {
    let cellId = "cell"
    let disposeBag = DisposeBag()
    var viewModel:RestaurantsListViewModel
    
    init(viewModel:RestaurantsListViewModel = RestaurantsListViewModel()) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        fetchData()
    }
    
    private func fetchData(){
        tableView.delegate = nil
        tableView.dataSource = nil
        viewModel.fetchRestaurantViewModels().bind(to:tableView.rx.items(cellIdentifier: cellId)){index,viewModel,cell in
            cell.textLabel?.text = viewModel.displayText
        }.disposed(by: disposeBag)
    }
    private func setupView(){
        title = viewModel.title
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = UIColor.white
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        tableView.separatorStyle = .none
    }

}

