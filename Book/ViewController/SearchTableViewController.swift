//
//  SearchTableViewController.swift
//  Book
//
//  Created by HeecheolYoon on 2022/07/21.
//

import UIKit

class SearchViewController: UIViewController {

    static let identity = "SearchViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let nav = UINavigationController(rootViewController: self)
        
        let seaerchBar = UISearchBar()
        
        navigationItem.titleView = seaerchBar
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(tapCloseBtn))

    }

    @objc func tapCloseBtn() {
        self.dismiss(animated: false)
    }
}
