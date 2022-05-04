//
//  GroupDetailsTableViewController.swift
//  Checklists
//
//  Created by New User on 22.04.2022.
//

import UIKit

// TODO:
//1.sozdat massiv s nashimi dannimi
//2.

class GroupDetailsTableViewController: UITableViewController {
    var items: [ChecklistItem] = []
    //        ChecklistItem(isChecked: true, name: "Walk the dog"),
    //        ChecklistItem(isChecked: true, name: "Brush teeth"),
    //        ChecklistItem(isChecked: false, name: "Learn IOS Development"),
    //        ChecklistItem(isChecked: false, name: "Soccer practice"),
    //        ChecklistItem(isChecked: true, name: "Eat ice cream"),
    //        ChecklistItem(isChecked: false, name: "Dance in the rain")
    //
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItemCell", for: indexPath) as! ItemsTableViewCell
        let item = items[indexPath.row]
        cell.ItemLabel.text = item.name
        cell.CheckMark.isHidden = !item.isChecked
        
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GroupDetailsToAddItem",
           let vc = segue.destination as? AddItemTableViewController,
           let indexPath =
            tableView.indexPathsForSelectedRows?.first{
            vc.title = "Edit item"
            vc.item = items[indexPath.row]
            //items[indexPath.row].name
        }
    }
}
