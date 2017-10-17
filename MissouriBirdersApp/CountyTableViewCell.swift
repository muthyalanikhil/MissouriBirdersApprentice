//
//  CountyTableViewCell.swift
//  MissouriBirdersApp
//
//  Created by Muthyala,Nikhil on 10/16/17.
//  Copyright © 2017 Muthyala,Nikhil. All rights reserved.
//

import UIKit

class CountyTableViewCell: UITableViewCell {

    // called by dequeueReusableCell(withIdentifier)
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
