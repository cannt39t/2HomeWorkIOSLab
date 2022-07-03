//
//  CreateContactViewController.swift
//  homeWork2
//
//  Created by Илья Казначеев on 02.07.2022.
//

import UIKit

protocol CreateContactDelegate: AnyObject{
    func saveContact(contact: Contact)
}

class CreateContactViewController: UIViewController {
    
    weak var delegate: CreateContactDelegate?

    @IBOutlet weak var newNumberTextField: UITextField!
    @IBOutlet weak var newNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    @IBAction func addNewContactButton(_ sender: Any) {
        
        guard let unwrapName = newNameTextField.text,
              let unwrapNumber = newNumberTextField.text
        else {
            return
        }
        print(unwrapName, unwrapNumber)
        
        let newContact = Contact(name: unwrapName, number: unwrapNumber)
        delegate?.saveContact(contact: newContact)
        
        
        
    }
    
}
