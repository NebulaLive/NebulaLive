//
//  ArtistFilterNavigationController.swift
//  NebulaLive
//
//  Created by Kyle Thomas on 04/09/2018.
//  Copyright © 2018 Kyle Thomas. All rights reserved.
//

import Foundation
import UIKit

class ArtistFilterNavigationController: UINavigationController {
    
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        self.isNavigationBarHidden = true
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    convenience init() {
        let filterViewController = ArtistFilterViewController()
        self.init(rootViewController: filterViewController)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
