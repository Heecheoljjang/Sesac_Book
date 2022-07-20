//
//  TestViewController.swift
//  Book
//
//  Created by HeecheolYoon on 2022/07/21.
//

import UIKit
import Kingfisher

class TestViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let httpUrl = URL(string: "http://me.go.kr/images/home/main/2018/img_head_link02.jpg")
        //let httpsUrl = URL(string: "https://www.kukinews.com/data/kuk/image/2022/06/10/kuk202206100269.680x.0.jpg")
        imgView.kf.setImage(with: httpUrl)
    }
    
}
