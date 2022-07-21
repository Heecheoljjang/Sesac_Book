//
//  TestSecondViewController.swift
//  Book
//
//  Created by HeecheolYoon on 2022/07/21.
//

import UIKit

class TestSecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        navigationItem.title = "dddd"
    }
    
    @IBAction func tapBtn(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
