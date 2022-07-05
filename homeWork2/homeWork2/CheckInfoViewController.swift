//
//  CheckInfoViewController.swift
//  homeWork2
//
//  Created by Илья Казначеев on 03.07.2022.
//

import UIKit

class CheckInfoViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    var name: String?
    var number: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        numberLabel.text = number
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
