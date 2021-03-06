//
//  MenuTableViewController.swift
//  iosDay4Examples
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit
//This is static table
class MenuTableViewController: UITableViewController {
  var countryName = ["Canada" , "India"]
  var friendsName = ["roop", "aman"]
  var collegeName = ["Lambton Coolege", "Sheridan College"]
  var sectionTitles = ["Countries","Friends", "Education Institutes"]
    var data = [0 : ["Canada" , "India"] , 1 : ["roop", "aman"], 2 : ["Lambton Coolege", "Sheridan College" ] , 3 : ["Countries","Friends", "Education Institutes"]]
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // self.navigationItem.rightBarButtonItem = self.editButtonItem
  }
  // MARK: - Table view data source
  override func numberOfSections(in tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return data.count
  }
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    return data[section]!.count
  }
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "reuseCellIdentifier", for: indexPath)
    // Configure the cell...
     
    let v = data[indexPath.section]![indexPath.row]
    cell.textLabel?.text = v
     
    return cell
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
  override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
     return sectionTitles[section]
  }
  override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
    return "Total : \(data.count) "
  }
}
