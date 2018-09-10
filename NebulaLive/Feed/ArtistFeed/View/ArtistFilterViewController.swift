//
//  ArtistFilterViewController.swift
//  NebulaLive
//
//  Created by Kyle Thomas on 29/08/2018.
//  Copyright © 2018 Kyle Thomas. All rights reserved.
//

import UIKit

class ArtistFilterViewController: UIViewController {

    @IBAction func editGenre(_ sender: Any) {
       let vc = GenreFilterViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func tickButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func editPrice(_ sender: Any) {
        let vc = PriceFilterViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func editRating(_ sender: Any) {
        let vc = RatingFilterViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func editLocation(_ sender: Any) {
        let vc = LocationFilterViewController()
        self.navigationController?.pushViewController(vc, animated: true)
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
