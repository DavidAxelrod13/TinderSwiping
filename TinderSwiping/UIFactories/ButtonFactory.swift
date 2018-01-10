//
//  ButtonFactory.swift
//  TinderSwiping
//
//  Created by David on 09/01/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

enum ButtonFactory {
    case buttonWithImage(image: UIImage, cornerRadius: CGFloat, target: Any, selector: Selector, sizeToFit: Bool)
    
    var new: UIButton {
        switch self {
        case .buttonWithImage(image: let image, cornerRadius: let cornerRadius, target: let target, selector: let selector, sizeToFit: let sizeToFit):
            return createButtonWithImage(image: image, cornerRadius: cornerRadius, target: target, selector: selector, sizeToFit: sizeToFit)
        }
    }
    
    private func createButtonWithImage(image: UIImage, cornerRadius: CGFloat, target: Any, selector: (Selector), sizeToFit: Bool) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(image, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = cornerRadius
        button.addTarget(target, action: selector, for: .touchUpInside)
        if sizeToFit {
            button.sizeToFit()
        }
        return button
    }
}
