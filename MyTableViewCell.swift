//
//  MyTableViewCell.swift
//  Mycustomcell
//
//  Created by Yogesh Patel on 25/09/19.
//  Copyright © 2019 yogesh patel. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell
{

    
    @IBOutlet weak var myimage: UIImageView!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblEmail: UILabel!
    
    @IBOutlet weak var lblMobile: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
