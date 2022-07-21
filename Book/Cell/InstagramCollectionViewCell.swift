//
//  InstagramCollectionViewCell.swift
//  Book
//
//  Created by HeecheolYoon on 2022/07/22.
//

import UIKit

class InstagramCollectionViewCell: UICollectionViewCell {
    
    static let identity = "InstagramCollectionViewCell"
    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var idLabel: UILabel!
    
    func setCell() {
        profileImg.image = UIImage(named: "괴물")
        profileImg.contentMode = .scaleToFill
        profileImg.layer.cornerRadius = profileImg.frame.height / 2
        profileImg.layer.borderColor = UIColor.lightGray.cgColor
        profileImg.layer.borderWidth = 3
        
        idLabel.text = "dkdkddk"
        idLabel.font = .systemFont(ofSize: 11, weight: .regular)
    }
}
