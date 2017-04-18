//
//  ContactTableViewController.swift
//  Proximi.ty
//
//  Created by Eric Yu on 4/18/17.
//  Copyright © 2017 ericYu. All rights reserved.
//

import UIKit

class ContactTableViewController: UITableViewController {

    var contacts = [Contact]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadSampleContacts()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        //Might need to change this to accomodate for different contact frequency
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

   
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "ContactTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ContactTableViewCell else {
            fatalError("The dequeued cell is not an instance of a ContactTableViewCell")
        }
        
        let contact = contacts[indexPath.row]

        cell.nameLabel.text = contact.name
        cell.dateLabel.text = contact.dateOfLastContact
        
        if(indexPath.row % 2 == 0) {
            print("Got in 1")
            cell.backgroundColor = UIColor (colorLiteralRed: 255.0/255.0, green: 199.0/255.0, blue: 44.0/255.0, alpha: 1)
        } else {
            cell.nameLabel.textColor = UIColor.white
            cell.dateLabel.textColor = UIColor.white
            cell.backgroundColor = UIColor (colorLiteralRed: 4.0/255.0, green: 30.0/255.0, blue: 66.0/255.0, alpha: 1)
        }
        

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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    private func loadSampleContacts() {
        guard let contact1 = Contact(name: "Sandeep Siva", phoneNumber: "248-470-0812", dateOfLastContact: "None") else {
            fatalError("Unable to instantiate contact1")
        }
        guard let contact2 = Contact(name: "Gary Huang", phoneNumber: "585-298-8250", dateOfLastContact: "None") else {
            fatalError("Unable to instantiate contact2")
        }
        guard let contact3 = Contact(name: "AnneMarie Torresen", phoneNumber: "202-701-6765", dateOfLastContact: "None") else {
            fatalError("Unable to instantiate contact3")
        }
        
        
        contacts += [contact1, contact2, contact3]
        
    }

}
