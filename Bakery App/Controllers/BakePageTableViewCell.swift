//
//  BakePageCellTableViewCell.swift
//  Bakery App
//
//  Created by sarah alnasser on 23/08/1444 AH.
//

import UIKit

class BakePageTableViewCell: UITableViewCell {
   
   
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
        coursePic.layer.cornerRadius = 4.5 //coursePic.frame.size.width/2
        coursePic.clipsToBounds = true
        courseLevel.layer.masksToBounds = true
        courseLevel.layer.cornerRadius = courseLevel.frame.height/2
      
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
