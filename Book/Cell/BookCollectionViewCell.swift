//
//  BookCollectionViewCell.swift
//  Book
//
//  Created by HeecheolYoon on 2022/07/20.
//

import UIKit

class BookCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var coverImg: UIImageView!
    @IBOutlet weak var rateLabel: UILabel!
    
    func configureCell(data: Book) {
        
        titleLabel.font = .systemFont(ofSize: 20, weight: .heavy)
        titleLabel.text = data.bookTitle
        rateLabel.font = .systemFont(ofSize: 11, weight: .light)
        rateLabel.textAlignment = .center
        rateLabel.text = "\(data.rate)"
        coverImg.contentMode = .scaleToFill
        coverImg.image = data.coverImg
        coverImg.layer.cornerRadius = 4
        
        backgroundColor = data.bgColor
        layer.cornerRadius = 10
    }
    
}
