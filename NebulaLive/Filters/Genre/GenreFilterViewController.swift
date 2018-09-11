//
//  GenreFilterViewController.swift
//  NebulaLive
//
//  Created by Kyle Thomas on 04/09/2018.
//  Copyright © 2018 Kyle Thomas. All rights reserved.
//

import UIKit

class GenreFilterViewController: UIViewController {

    var genres = ["Blues", "Reggae", "Country", "Electronic", "Folk", "Hip Hop", "Jazz", "Pop"]
    
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(UINib(nibName: "GenreTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "cell")
        
        // Do any additional setup after loading the view.
    }

    @IBAction func tickButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
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

extension GenreFilterViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) as? GenreTableViewCell {
            cell.selectedDot.isHidden = !cell.selectedDot.isHidden
        }
    }
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        
    }
}

extension GenreFilterViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? GenreTableViewCell {
            cell.nameLabel.text = genres[indexPath.row]
            return cell
        }
        return UITableViewCell()
    }
}
