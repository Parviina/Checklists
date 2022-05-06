//
//  ViewController.swift
//  Checklists
//
//  Created by New User on 15.04.2022.
//

import UIKit

class MainViewController: UITableViewController  {
    let groups: [ChecklistGroup] = [
        ChecklistGroup(title: "Birthdays", imageName: "Birthdays", items: [ChecklistItem(isChecked: true, name: "My 20th birthday", remindMe: true,dueDate: Date())]),
        ChecklistGroup(title: "Groceries",imageName: "Groceries",items: [ChecklistItem(isChecked: true, name: "Cola", remindMe: false)]),
        ChecklistGroup(title: "To Do", imageName: "Chores",items: []),
        ChecklistGroup(title: "Business Stuff", imageName: "Folder",items: [ChecklistItem(isChecked: true, name: "Eat banana", remindMe: false)]),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let group = groups[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as! GroupTableViewCell
    
        cell.titleLabel.text = group.title
        
        cell.iconView.image = UIImage(named: group.imageName)
        cell.subtitleLabel.text = group.getRemainings()
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "MainToGroupDetails"{
                if let vc = segue.destination as? GroupDetailsTableViewController{
                    if let indexPath = tableView.indexPathsForSelectedRows?.first {
                        vc.items = groups[indexPath.row].items
                    }}}
    }

                    
}

