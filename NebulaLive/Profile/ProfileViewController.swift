//
//  ProfileViewController.swift
//  NebulaLive
//
//  Created by Kyle Thomas on 22/08/2018.
//  Copyright © 2018 Kyle Thomas. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNeedsStatusBarAppearanceUpdate()
        // Do any additional setup after loading the view.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.scrollView.contentSize = CGSize(width: Config.Screen.width, height: 753 - 20)
    }
}
