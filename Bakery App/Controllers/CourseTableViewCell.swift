//
//  CourseTableViewCell.swift
//  Bakery App
//
//  Created by sarah alnasser on 30/08/1444 AH.
//

import UIKit

class CourseTableViewCell: UITableViewCell {

    @IBOutlet weak var Courseimag: UIImageView!
    
    @IBOutlet weak var courseName: UILabel!
    
    @IBOutlet weak var courseDate: UILabel!
    @IBOutlet weak var courseLevel: UILabel!
    
    @IBOutlet weak var courseDuration: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        Courseimag.layer.cornerRadius = 4.5 //coursePic.frame.size.width/2
        Courseimag.clipsToBounds = true
        courseLevel.layer.masksToBounds = true
        courseLevel.layer.cornerRadius = courseLevel.frame.height/2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
