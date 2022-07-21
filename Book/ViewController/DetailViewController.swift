//
//  DetailViewController.swift
//  Book
//
//  Created by HeecheolYoon on 2022/07/21.
//

import UIKit

class DetailViewController: UIViewController {

    static let identity = "DetailViewController"
    
    @IBOutlet weak var webBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "상세정보"
    }
    @IBAction func tapWebBtn(_ sender: UIButton) {

        let sb = UIStoryboard(name: "Web", bundle: nil)
        
        guard let vc = sb.instantiateViewController(withIdentifier: WebViewController.identity) as? WebViewController else { return }

        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
