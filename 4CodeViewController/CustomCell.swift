//
//  CustomCell.swift
//  4CodeViewController
//
//  Created by DungB96 on 2018/05/28.
//  Copyright © 2018 DungB96. All rights reserved.
//

import Foundation
import UIKit


class CustomCell: UITableViewCell {
    
    let cellLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "example"
        return label
    }()
    
    let imageSize: CGFloat = 40
    lazy var cellImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = UIColor.orange
        return image
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: "cellID")
    
        setup()
    }
    
    
    func setup(){
        contentView.addSubview(cellImage)
        cellImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        cellImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        cellImage.heightAnchor.constraint(equalToConstant: imageSize).isActive = true
        cellImage.widthAnchor.constraint(equalToConstant: imageSize).isActive = true
        
        contentView.addSubview(cellLabel)
        cellLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        cellLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
       

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
