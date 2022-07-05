//
//  WrongViewController.swift
//  homeWork2
//
//  Created by Илья Казначеев on 02.07.2022.
//

import UIKit

class WrongViewController: UIViewController {
    
    var wrongpassword: String?

    @IBOutlet weak var passWordLabel: UILabel!
    @IBOutlet weak var tryAgainButton: UIButton!
    @IBOutlet weak var lockImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        lockImage.tintColor = .red
        passWordLabel.text = "Your password " +  "'\(wrongpassword!)' " + "is not right"
    }
    
    
    @IBAction func whenWasRaped(_ sender: Any) {
        dismiss(animated: true)
    }
    
    

}
