//
//  TinderCard.swift
//  TinderSwiping
//
//  Created by David on 09/01/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class TinderCard: BaseView {
    
    let profileImageView = ImageViewFactory.standardImageView(image: #imageLiteral(resourceName: "girl2"), cornerRadius: 0, interactionEnabled: true, contentMode: .scaleAspectFill, sizeToFit: false).new
    
    let friendsIconView = ImageViewFactory.standardImageView(image: #imageLiteral(resourceName: "tinderIcon"), cornerRadius: 0, interactionEnabled: false, contentMode: .scaleAspectFill, sizeToFit: false).new
    
    let containerView: BaseView = {
       let bv = BaseView()
        bv.backgroundColor = .white
        bv.clipsToBounds = true
        bv.layer.cornerRadius = 10
        bv.layer.borderWidth = 0.5
        bv.layer.borderColor = UIColor.gray.cgColor
        return bv
    }()
    
    let infoContainerView: BaseView = {
        let bv = BaseView()
        return bv
    }()
    
    let nameLabel = LabelFactory.standardLabel(text: "Jyn Erso", textColor: .gray, fontStyle: .headline, textAlignment: .left, sizeToFit: true, adjustToFit: true).new
    let workLabel = LabelFactory.standardLabel(text: "Member of the Chevelue De Teslavan", textColor: .gray, fontStyle: .subheadline, textAlignment: .left, sizeToFit: true, adjustToFit: true).new
    
    override func setUpViews() {
        
        addSubview(containerView)
        
        containerView.addSubview(profileImageView)
        containerView.addSubview(infoContainerView)
        
        infoContainerView.addSubview(nameLabel)
        infoContainerView.addSubview(workLabel)
        infoContainerView.addSubview(friendsIconView)
        
        let safeAreaTopAnchor = safeAreaLayoutGuide.topAnchor
        let safeAreaBottomAnchor = safeAreaLayoutGuide.bottomAnchor
        let safeAreaLeadingAnchor = safeAreaLayoutGuide.leadingAnchor

        let infoContainerViewMargins = infoContainerView.layoutMarginsGuide
        
        
        NSLayoutConstraint.activate([
            
            containerView.topAnchor.constraint(equalTo: safeAreaTopAnchor),
            containerView.leadingAnchor.constraint(equalTo: safeAreaLeadingAnchor),
            containerView.widthAnchor.constraint(equalTo: widthAnchor),
            containerView.bottomAnchor.constraint(equalTo: safeAreaBottomAnchor),
            
            profileImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            profileImageView.topAnchor.constraint(equalTo: containerView.topAnchor),
            profileImageView.widthAnchor.constraint(equalTo: containerView.widthAnchor),
            profileImageView.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 0.85),
            
            infoContainerView.topAnchor.constraint(equalTo: profileImageView.bottomAnchor),
            infoContainerView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            infoContainerView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            infoContainerView.widthAnchor.constraint(equalTo: containerView.widthAnchor),
            
            friendsIconView.centerYAnchor.constraint(equalTo: infoContainerViewMargins.centerYAnchor),
            friendsIconView.heightAnchor.constraint(equalTo: infoContainerViewMargins.heightAnchor, multiplier: 0.7),
            friendsIconView.widthAnchor.constraint(equalTo: friendsIconView.heightAnchor),
            friendsIconView.trailingAnchor.constraint(equalTo: infoContainerViewMargins.trailingAnchor),
            
            nameLabel.leadingAnchor.constraint(equalTo: infoContainerViewMargins.leadingAnchor),
            nameLabel.topAnchor.constraint(equalTo: infoContainerViewMargins.topAnchor),
            
            workLabel.leadingAnchor.constraint(equalTo: infoContainerViewMargins.leadingAnchor),
            workLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
            workLabel.trailingAnchor.constraint(equalTo: friendsIconView.leadingAnchor, constant: -20)
            
            ])
        
    }
}
