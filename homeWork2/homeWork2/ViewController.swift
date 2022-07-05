//
//  ViewController.swift
//  homeWork2
//
//  Created by Илья Казначеев on 02.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFromUserField: UITextField!
    @IBOutlet weak var nextStepButton: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // nextStepButton.setTitle("Next step", for: .normal)
        
    }
    
    
    @IBAction func whenWasTaped(_ sender: Any) {
        guard let unwrap = textFromUserField.text else {
            return
        }
        
        if(unwrap.starts(with: "89087")){
            guard let RightTableVC = storyboard?.instantiateViewController(withIdentifier: "RightTableViewController") else {
                return
            }
            navigationController?.pushViewController(RightTableVC, animated: true)
        } else {
            guard let wrongVC = storyboard?.instantiateViewController(withIdentifier: "WrongViewController") as? WrongViewController  else{ return }
            wrongVC.wrongpassword = unwrap
            present(wrongVC, animated: true)
        
        }
    }
    
    
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        textFromUserField.text = nil
    }
    

}

