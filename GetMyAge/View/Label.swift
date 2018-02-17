//
//  Label.swift
//  GetMyAge
//
//  Created by Ahmed Abuelmagd on 1/22/18.
//  Copyright © 2018 Ahmed Abuelmagd. All rights reserved.
//

import UIKit
@IBDesignable
class Label: UILabel {
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    func customizeView () {
        backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        layer.cornerRadius = 15
        layer.masksToBounds = true
    }
    

}
