//
//  TableViewCell.swift
//  app
//
//  Created by Roberto Caputi on 14/03/18.
//  Copyright © 2018 Roberto Caputi. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var polaccaLabel: UILabel!
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var polaccaImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
