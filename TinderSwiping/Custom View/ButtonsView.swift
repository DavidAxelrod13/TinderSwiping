//
//  ButtonsView.swift
//  TinderSwiping
//
//  Created by David on 09/01/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class ButtonsView: BaseView {
    lazy var likeButton: UIButton = {
        let but = ButtonFactory.buttonWithImage(image: #imageLiteral(resourceName: "like"), cornerRadius: 0, target: self, selector: #selector(like), sizeToFit: true).new
        return but
    }()
    
    lazy var passButton: UIButton = {
        let but = ButtonFactory.buttonWithImage(image: #imageLiteral(resourceName: "pass"), cornerRadius: 0, target: self, selector: #selector(pass), sizeToFit: true).new
        return but
    }()
    
    lazy var superLikeButton: UIButton = {
        let but = ButtonFactory.buttonWithImage(image: #imageLiteral(resourceName: "superlike"), cornerRadius: 0, target: self, selector: #selector(superLike), sizeToFit: true).new
        return but
    }()
    
    lazy var container: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [self.likeButton, self.passButton, self.superLikeButton])
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.spacing = 20
        sv.distribution = .fillEqually
        return sv
    }()
    
    override func setUpViews() {
        
        addSubview(container)
        
        NSLayoutConstraint.activate([
            
            container.leadingAnchor.constraint(equalTo: leadingAnchor),
            container.topAnchor.constraint(equalTo: topAnchor),
            container.widthAnchor.constraint(equalTo: widthAnchor),
            container.heightAnchor.constraint(equalTo: heightAnchor)
            
            ])
    }
    
    @objc func like() {
        print("like print")
    }
    
    @objc func pass() {
        print("pass print")
    }
    
    @objc func superLike() {
        print("super like print")
    }
    
}
