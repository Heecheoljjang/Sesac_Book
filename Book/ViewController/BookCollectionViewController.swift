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

        // 컬렉션뷰 레이아웃
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 16
        let width = UIScreen.main.bounds.width - 40 // 16 * 2 + 8
        
        layout.scrollDirection = .vertical

        layout.itemSize = CGSize(width: width / 2, height: width / 2)
        
        layout.minimumLineSpacing = spacing / 2
        
        layout.minimumInteritemSpacing = spacing / 2
        
        layout.sectionInset = UIEdgeInsets(top: spacing / 4, left: spacing, bottom: spacing, right: spacing)
        
        collectionView.collectionViewLayout = layout
        
        // 네비게이션 추가
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(tapSearchBtn))
        
    }

    @objc func tapSearchBtn() {
        let sb = UIStoryboard(name: "Search", bundle: nil)
        guard let vc = sb.instantiateViewController(withIdentifier: SearchViewController.identity) as? SearchViewController else { return }
        
        let nav = UINavigationController(rootViewController: vc)
        
        
        nav.modalPresentationStyle = .fullScreen
        self.present(nav, animated: false)
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

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Detail", bundle: nil)
        guard let vc = sb.instantiateViewController(withIdentifier: DetailViewController.identity) as? DetailViewController else { return }
        
        navigationController?.pushViewController(vc, animated: true)
    }
   
}
