//
//  UpcomingShowsViewController.swift
//  NebulaLive
//
//  Created by Kyle Thomas on 09/08/2018.
//  Copyright © 2018 Kyle Thomas. All rights reserved.
//

import Foundation
import UIKit

class UpcomingShowsViewController: UIViewController {
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.register(UINib(nibName: "UpcomingShowCell", bundle: nil), forCellWithReuseIdentifier: "ShowCell")
        self.collectionView.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: UIScreen.main.bounds.size.width, height: 135)
        layout.minimumLineSpacing = 0 
        self.collectionView.setCollectionViewLayout(layout, animated: false)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

extension UpcomingShowsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ShowCell", for: indexPath) as? UpcomingShowCell {
            return cell
        }
        return UICollectionViewCell()
    }
}
