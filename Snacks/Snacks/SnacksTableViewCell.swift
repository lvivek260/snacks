//
//  SnacksTableViewCell.swift
//  Snacks
//
//  Created by Admin on 23/01/23.
//

import UIKit

class SnacksTableViewCell: UITableViewCell {

    @IBOutlet weak var snacksName: UILabel!
    @IBOutlet weak var snacksImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
