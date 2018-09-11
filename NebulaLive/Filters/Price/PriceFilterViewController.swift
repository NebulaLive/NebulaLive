//
//  PriceFilterViewController.swift
//  NebulaLive
//
//  Created by Kyle Thomas on 10/09/2018.
//  Copyright © 2018 Kyle Thomas. All rights reserved.
//

import UIKit

class PriceFilterViewController: UIViewController {

    @IBAction func tickButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
