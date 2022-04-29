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
        var item = items[indexPath.row]
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

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
