//
//  VenueFeedViewController.swift
//  NebulaLive
//
//  Created by Kyle Thomas on 30/07/2018.
//  Copyright © 2018 Kyle Thomas. All rights reserved.
//

import Foundation
import UIKit

class VenueFeedViewController: UIViewController {
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.register(UINib(nibName: "FeedCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FeedCell")
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: self.collectionView.bounds.size.width, height: 130)
        self.collectionView.setCollectionViewLayout(layout, animated: false)
    }
}

extension VenueFeedViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MockData.Artists.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FeedCell", for: indexPath) as? FeedCollectionViewCell {
            cell.nameLabel.text = MockData.Venues[indexPath.row].name
            cell.descriptionLabel.text = MockData.Venues[indexPath.row].desc
            cell.imageView.image = UIImage(named: MockData.Venues[indexPath.row].image)
            return cell
        }
        return UICollectionViewCell()
    }
}

extension VenueFeedViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = ModalProfileViewController()
        self.navigationController?.pushViewController(vc, animated: true)
//        self.present(vc, animated: true, completion: nil)
    }
}
