//
//  TableViewCell.swift
//  UITableViewExample
//
//  Created by Diego Dominguez on 08/03/2020.
//  Copyright © 2020 Diego Dominguez. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    var contactImageView = UIImageView()
    var contactName = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(contactImageView)
        addSubview(contactName)
        
        configureImageView()
        configureTitleLabel()
        setImageConstraints()
        setLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(contact: Contact){
        contactImageView.image=contact.image
        contactName.text=contact.name
    }
    
    func configureImageView(){
        contactImageView.layer.cornerRadius = 40
        contactImageView.clipsToBounds      = true
    }
    
    func configureTitleLabel(){
        contactName.numberOfLines = 0
        contactName.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstraints(){
        contactImageView.translatesAutoresizingMaskIntoConstraints                                                  = false
        contactImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive                                  = true
        contactImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive                    = true
        contactImageView.heightAnchor.constraint(equalToConstant: 80).isActive                                      = true
        contactImageView.widthAnchor.constraint(equalTo: contactImageView.heightAnchor, multiplier: 1/1).isActive  = true
    }
    
    func setLabelConstraints(){
        contactName.translatesAutoresizingMaskIntoConstraints                                                  = false
        contactName.centerYAnchor.constraint(equalTo: centerYAnchor).isActive                                  = true
        contactName.leadingAnchor.constraint(equalTo: contactImageView.trailingAnchor, constant: 20).isActive  = true
        contactName.heightAnchor.constraint(equalToConstant: 80).isActive                                      = true
        contactName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive                 = true
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
