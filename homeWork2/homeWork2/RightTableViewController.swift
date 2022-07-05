//
//  RightTableViewController.swift
//  homeWork2
//
//  Created by Илья Казначеев on 02.07.2022.
//

import UIKit

struct Contact{
    let name: String
    let number: String
}

class RightTableViewController: UITableViewController {
    
    var userDefault = UserDefaults.standard
    
    var contacts: [Contact] = [
        Contact(name: "Sanek", number: "89271949291"),
        Contact(name: "Ilya", number: "8927199177"),
        Contact(name: "Ruslana", number: "8927197791"),
        Contact(name: "Katya", number: "895621949291")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return contacts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "RightTableViewCell",
            for: indexPath)
                as? RightTableViewCell else { return UITableViewCell() }
        
        cell.nameLabel.text = contacts[indexPath.row].name
        cell.numberLabel.text = contacts[indexPath.row].number
    
        return cell
    }
    

    @IBAction func createContactWasTaped(_ sender: Any) {
        guard let createVC = storyboard?.instantiateViewController(withIdentifier: "CreateContactViewController") as? CreateContactViewController else {
            return
        }
        createVC.delegate = self
        navigationController?.pushViewController(createVC, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let infoVC = storyboard?.instantiateViewController(withIdentifier: "CheckInfoViewController") as? CheckInfoViewController else {
            return
        }
        infoVC.name = contacts[indexPath.row].name
        infoVC.number = contacts[indexPath.row].number
        present(infoVC, animated: true)
    }
    

}

extension RightTableViewController: CreateContactDelegate{
    func saveContact(contact: Contact) {
        contacts.append(contact)
        tableView.reloadData()
    }
}
