//
//  AnimalListDetailViewController.swift
//  FieldSurvey
//
//  Created by Ryan Glascock on 4/29/19.
//  Copyright © 2019 Ryan Glascock. All rights reserved.
//

import UIKit

class AnimalListDetailViewController: UIViewController {
    var animalList = AnimalList?

    var dateFormater = DateFormatter()
    
    @IBOutlet weak var animalIconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormater.dateStyle = .medium
        dateFormater.timeStyle = .medium
        
        animalIconImageView.image = animalList.animal.image
        nameLabel.text = animalList?.name
        
        if let date = animalList?.date {
            dateLabel.text = dateFormater.string(from: date)
        }else {
            dateLabel.text = ""
        }
        
        // Do any additional setup after loading the view.
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
