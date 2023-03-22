//
//  BakeDesignCell.swift
//  Bakery App
//
//  Created by sarah alnasser on 27/08/1444 AH.
//

import Foundation
import UIKit
@IBDesignable class BakeDesignCell : UIView {
    @IBInspectable var cornerRadius: CGFloat = 4.5
    @IBInspectable var shadowColor : UIColor? = UIColor.gray
    @IBInspectable var shadowOffsetWidth:Int = 0
    @IBInspectable var shadowOffsetHeight: Int = 1
    @IBInspectable var shadowOpacity: Float = 1
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        layer.shadowColor = shadowColor?.cgColor
        layer.shadowOffset = CGSize(width : shadowOffsetWidth, height: shadowOffsetHeight)
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        layer.shadowPath = shadowPath.cgPath
        layer.shadowOpacity = shadowOpacity
    }
}
