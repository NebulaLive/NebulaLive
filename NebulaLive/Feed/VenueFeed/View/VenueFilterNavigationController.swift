//
//  VenueFilterNavigationController.swift
//  NebulaLive
//
//  Created by Kyle Thomas on 11/09/2018.
//  Copyright © 2018 Kyle Thomas. All rights reserved.
//

import Foundation
import UIKit

class VenueFilterNavigationController: UINavigationController {
    
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        self.isNavigationBarHidden = true
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    convenience init() {
        let filterViewController = VenueFilterController()
        self.init(rootViewController: filterViewController)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
