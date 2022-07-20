//
//  BookCollectionViewController.swift
//  Book
//
//  Created by HeecheolYoon on 2022/07/20.
//

import UIKit

private let reuseIdentifier = "Cell"

class BookCollectionViewController: UICollectionViewController {

    let books = BookInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 16
        let width = UIScreen.main.bounds.width - 40 // 16 * 2 + 8
        
        layout.scrollDirection = .vertical

        layout.itemSize = CGSize(width: width / 2, height: width / 2)
        
        layout.minimumLineSpacing = spacing / 2
        
        layout.minimumInteritemSpacing = spacing / 2
        
        layout.sectionInset = UIEdgeInsets(top: spacing / 4, left: spacing, bottom: spacing, right: spacing)
        
        collectionView.collectionViewLayout = layout
        
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return books.books.count
        
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookCollectionViewCell", for: indexPath) as? BookCollectionViewCell else { return UICollectionViewCell()}
        
        cell.configureCell(data: books.books[indexPath.item])
        
        return cell
    }

   
}
