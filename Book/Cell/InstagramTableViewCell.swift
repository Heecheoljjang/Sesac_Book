//
//  InstagramTableViewCell.swift
//  Book
//
//  Created by HeecheolYoon on 2022/07/22.
//

import UIKit

class InstagramTableViewCell: UITableViewCell {

    static let identity = "InstagramTableViewCell"
    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    
    func setCell() {
        profileImg.image = UIImage(named: "국제시장")
        mainImg.image = UIImage(named: "국제시장")
        profileImg.layer.cornerRadius = profileImg.frame.height / 2
    }
}
