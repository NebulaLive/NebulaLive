//
//  VenueTypeViewController.swift
//  NebulaLive
//
//  Created by Kyle Thomas on 11/09/2018.
//  Copyright © 2018 Kyle Thomas. All rights reserved.
//

import UIKit

class VenueTypeViewController: UIViewController {

    var types: [String] = ["Bar", "Cafe", "Club", "Pub", "Restaraunt", "Live Music Venue", "Concert Hall", "Event"]
    @IBOutlet var tableView: UITableView!
    @IBAction func tickButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "GenreTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "cell")
        

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



extension VenueTypeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) as? GenreTableViewCell {
            cell.selectedDot.isHidden = !cell.selectedDot.isHidden
        }
    }
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        
    }
}

extension VenueTypeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.types.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? GenreTableViewCell {
            cell.nameLabel.text = self.types[indexPath.row]
            return cell
        }
        return UITableViewCell()
    }
}
