//
//  ArtistFeedViewController.swift
//  NebulaLive
//
//  Created by Kyle Thomas on 30/07/2018.
//  Copyright © 2018 Kyle Thomas. All rights reserved.
//

import Foundation
import UIKit

class ArtistFeedViewController: UIViewController {
    @IBOutlet var collectionView: UICollectionView!
    
    @IBOutlet var filterButtonView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.register(UINib(nibName: "FeedCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FeedCell")
        self.collectionView.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: self.collectionView.bounds.size.width, height: 130)
        self.collectionView.setCollectionViewLayout(layout, animated: false)
        let tap = UITapGestureRecognizer(target: self, action: #selector(filterTapped))
        self.filterButtonView.addGestureRecognizer(tap)
    }
    
    @objc func filterTapped() {
        let filterVC = ArtistFilterNavigationController()
        self.present(filterVC, animated: true, completion: nil)
    }
}

extension ArtistFeedViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = ModalProfileViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension ArtistFeedViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MockData.Artists.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FeedCell", for: indexPath) as? FeedCollectionViewCell {
            cell.nameLabel.text = MockData.Artists[indexPath.row].name
            cell.descriptionLabel.text = MockData.Artists[indexPath.row].desc
            cell.imageView.image = UIImage(named: MockData.Artists[indexPath.row].image)
            return cell
        }
        return UICollectionViewCell()
    }
}
