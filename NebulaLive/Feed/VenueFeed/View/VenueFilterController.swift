//
//  VenueFilterController.swift
//  NebulaLive
//
//  Created by Kyle Thomas on 11/09/2018.
//  Copyright © 2018 Kyle Thomas. All rights reserved.
//

import UIKit

class VenueFilterController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func tickButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func editType(_ sender: Any) {
        let vc = VenueTypeViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func editLocation(_ sender: Any) {
        let vc = LocationFilterViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func editRating(_ sender: Any) {
        let vc = RatingFilterViewController()
        self.navigationController?.pushViewController(vc, animated: true)
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
