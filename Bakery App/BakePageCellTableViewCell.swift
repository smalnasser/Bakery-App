//
//  BakePageCellTableViewCell.swift
//  Bakery App
//
//  Created by sarah alnasser on 23/08/1444 AH.
//

import UIKit

class BakePageCellTableViewCell: UITableViewCell {
   
   
    @IBOutlet weak var coursePic: UIImageView!
    
    @IBOutlet weak var courseName: UILabel!
    @IBOutlet weak var courseLevel: UILabel!
//    @IBOutlet weak var courseDurationPic: UIImageView!
    @IBOutlet weak var courseDuration: UILabel!
   
//    @IBOutlet weak var courseDatePic: UIImageView!
    
    @IBOutlet weak var courseDate: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
