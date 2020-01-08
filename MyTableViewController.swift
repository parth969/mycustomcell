//
//  MyTableViewController.swift
//  Mycustomcell
//
//  Created by Yogesh Patel on 25/09/19.
//  Copyright © 2019 yogesh patel. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    var arr = [
    [
        "Image" : #imageLiteral(resourceName: "img.png"),
        "Name" : "Yogeh",
        "Email" : "y1@gmail.com",
        "Mobile" : "9876543210"
        ],
    [
    "Image" : #imageLiteral(resourceName: "img.png"),
    "Name" : "Priya",
    "Email" : "p1@gmail.com",
    "Mobile" : "9876543210"
    ],
   
        [
        "Image" : #imageLiteral(resourceName: "img.png"),
        "Name" : "Nikunj",
        "Email" : "n1@gmail.com",
        "Mobile" : "9876543210"],
        [
        "Image" : #imageLiteral(resourceName: "img.png"),
        "Name" : "Nikunj",
        "Email" : "n1@gmail.com",
        "Mobile" : "9876543210"],
        [
        "Image" : #imageLiteral(resourceName: "img.png"),
        "Name" : "Nikunj",
        "Email" : "n1@gmail.com",
        "Mobile" : "9876543210"],
        [
        "Image" : #imageLiteral(resourceName: "img.png"),
        "Name" : "Nikunj",
        "Email" : "n1@gmail.com",
        "Mobile" : "9876543210"],
        [
        "Image" : #imageLiteral(resourceName: "img.png"),
        "Name" : "Nikunj",
        "Email" : "n1@gmail.com",
        "Mobile" : "9876543210"],
        [
        "Image" : #imageLiteral(resourceName: "img.png"),
        "Name" : "Nikunj",
        "Email" : "n1@gmail.com",
        "Mobile" : "9876543210"],
        [
        "Image" : #imageLiteral(resourceName: "img.png"),
        "Name" : "Nikunj",
        "Email" : "n1@gmail.com",
        "Mobile" : "9876543210"],
        [
        "Image" : #imageLiteral(resourceName: "img.png"),
        "Name" : "Nikunj",
        "Email" : "n1@gmail.com",
        "Mobile" : "9876543210"],
        [
        "Image" : #imageLiteral(resourceName: "img.png"),
        "Name" : "Nikunj",
        "Email" : "n1@gmail.com",
        "Mobile" : "9876543210"],
        [
        "Image" : #imageLiteral(resourceName: "img.png"),
        "Name" : "Nikunj",
        "Email" : "n1@gmail.com",
        "Mobile" : "9876543210"],
        [
        "Image" : #imageLiteral(resourceName: "img.png"),
        "Name" : "Nikunj",
        "Email" : "n1@gmail.com",
        "Mobile" : "9876543210"],
        [
        "Image" : #imageLiteral(resourceName: "img.png"),
        "Name" : "Nikunj",
        "Email" : "n1@gmail.com",
        "Mobile" : "9876543210"],
        [
        "Image" : #imageLiteral(resourceName: "img.png"),
        "Name" : "Nikunj",
        "Email" : "n1@gmail.com",
        "Mobile" : "9876543210"],
        [
        "Image" : #imageLiteral(resourceName: "img.png"),
        "Name" : "Nikunj",
        "Email" : "n1@gmail.com",
        "Mobile" : "9876543210"],
        [
        "Image" : #imageLiteral(resourceName: "img.png"),
        "Name" : "Nikunj",
        "Email" : "n1@gmail.com",
        "Mobile" : "9876543210"]
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arr.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Mycell", for: indexPath) as! MyTableViewCell

        cell.myimage.image = arr[indexPath.row]["Image"] as? UIImage
           cell.lblName.text = arr[indexPath.row]["Name"] as? String
            cell.lblEmail.text = arr[indexPath.row]["Email"] as? String
            cell.lblMobile.text = arr[indexPath.row]["Mobile"] as? String
            
        cell.contentView.layer.cornerRadius = 20.0
        cell.contentView.layer.borderColor = UIColor.white.withAlphaComponent(1.0).cgColor
        cell.contentView.layer.borderWidth = 10.0
        
        let border = CALayer()
        let width = CGFloat(5.0)
        border.borderColor = UIColor.darkGray.cgColor
        border.frame = CGRect(x: 0, y: cell.contentView.frame.size.height - width, width: cell.contentView.frame.size.width, height: cell.contentView.frame.size.height)
        
        border.borderWidth = width
        cell.contentView.layer.addSublayer(border)
        cell.contentView.layer.masksToBounds = true
        cell.contentView.clipsToBounds = true
        
        
//        let radius = cell.backgroundView!.frame.height/2
//        cell.backgroundView?.layer.cornerRadius = radius
        // Configure the cell...

        return cell
    }
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let rotationTransformation = CATransform3DTranslate(CATransform3DIdentity, -500, 10, 0)
        cell.layer.transform = rotationTransformation
        cell.alpha = 0.5
        UIView.animate(withDuration: 0.5) {
            cell.layer.transform = CATransform3DIdentity
            cell.alpha = 1.0
        }
    }
//     func layoutSubviews() {
//        self.bounds = CGRectMake(self.bounds.origin.x,self.bounds.origin.y,self.bounds.size.width - 40,self.bounds.size.height)
//        super.layoutSubviews()
//    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    /* //Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
             //Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
//Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }*/
    
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
