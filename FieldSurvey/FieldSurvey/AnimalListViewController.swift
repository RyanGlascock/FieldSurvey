//
//  AnimalListViewController.swift
//  FieldSurvey
//
//  Created by Ryan Glascock on 4/29/19.
//  Copyright © 2019 Ryan Glascock. All rights reserved.
//

import UIKit

class AnimalListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    let dateFormatter = DateFormatter()
    let animalList = AnimalListJSONLoader.load(filename: "list")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalListCell", for: indexPath)
        if let cell = cell? as AnimalListTableViewCell {
            cell.animalIconImageView.image = animalList.animal.image
            cell.matchupLabel.text = animalList.matchup
            cell.dateLabel.text = dateFormatter.string(from: animalList.date)
        }
            
        return cell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
