//
//  MenuOptionCell.swift
//  GOW
//
//  Created by José Fernando Cristóbal Huerta on 12/08/23.
//

import UIKit

class MenuOptionCell: UITableViewCell {
    
    
    @IBOutlet weak var menuImage: UIImageView!
    @IBOutlet weak var menuLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
