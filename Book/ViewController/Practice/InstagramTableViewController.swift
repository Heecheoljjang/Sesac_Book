//
//  InstagramTableViewController.swift
//  Book
//
//  Created by HeecheolYoon on 2022/07/21.
//

import UIKit

class InstagramTableViewController: UITableViewController {

    @IBOutlet weak var storyCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let buttons: [UIBarButtonItem] = [
            UIBarButtonItem(image: UIImage(systemName: "message"), style: .plain, target: self, action: nil),
            UIBarButtonItem(image: UIImage(systemName: "heart"), style: .plain, target: self, action: nil),
            UIBarButtonItem(image: UIImage(systemName: "plus.app"), style: .plain, target: self, action: nil)
        ]
        navigationItem.setRightBarButtonItems(buttons, animated: true)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Instagram", style: .plain, target: self, action: nil)
        
        //컬렉션뷰셀 레이아웃
        
        let layout = UICollectionViewFlowLayout()
        let spacing = CGFloat(4)
        let width = UIScreen.main.bounds.width - (spacing * 9)
        
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 125, height: 130)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        //layout.sectionInset = UIEdgeInsets(top: 0, left: spacing, bottom: 0, right: 0)
        storyCollectionView.collectionViewLayout = layout
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: InstagramTableViewCell.identity, for: indexPath) as? InstagramTableViewCell else { return UITableViewCell() }
        
        cell.setCell()
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(750)
    }
    
}

extension InstagramTableViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: InstagramCollectionViewCell.identity, for: indexPath) as? InstagramCollectionViewCell else { return UICollectionViewCell() }
        
        cell.setCell()
        
        return cell
    }
    
    
}
