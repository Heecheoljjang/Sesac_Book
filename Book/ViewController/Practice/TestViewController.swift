//
//  TestViewController.swift
//  Book
//
//  Created by HeecheolYoon on 2022/07/21.
//

import UIKit
import Kingfisher

class TestViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func tapBtn(_ sender: Any) {
        
        let sb = UIStoryboard(name: "Test", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "TestSecondViewController")
        
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        
        present(nav, animated: true)

        //navigationController?.pushViewController(nav, animated: true)
    }
    
}
