//
//  UIViewExt.swift
//  UITableViewExample
//
//  Created by Diego Dominguez on 08/03/2020.
//  Copyright © 2020 Diego Dominguez. All rights reserved.
//

import UIKit

extension UIView {
    func pin (to superView: UIView){
        translatesAutoresizingMaskIntoConstraints                               = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive             = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive     = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive   = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive       = true
    }
}
