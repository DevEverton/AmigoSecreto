//
//  CircleImageView.swift
//  AmigoSecreto
//
//  Created by Everton Carneiro on 25/11/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import UIKit


@IBDesignable
class CircleImage: UIImageView {
    
    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
}


