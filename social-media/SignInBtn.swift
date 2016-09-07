//
//  SignInBtn.swift
//  social-media
//
//  Created by Peter Rule on 07/09/2016.
//  Copyright © 2016 Peter Rule. All rights reserved.
//

import UIKit

class SignInBtn: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.6).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        layer.cornerRadius = 2.0
    }

}
