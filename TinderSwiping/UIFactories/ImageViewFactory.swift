//
//  ImageViewFactory.swift
//  TinderSwiping
//
//  Created by David on 09/01/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

enum ImageViewFactory {
    
    case standardImageView(image: UIImage, cornerRadius: CGFloat, interactionEnabled: Bool, contentMode: UIViewContentMode, sizeToFit: Bool)
    
    var new: UIImageView {
        switch self {
        case .standardImageView(image: let image, cornerRadius: let cornerRadius, interactionEnabled: let interactionEnabled, contentMode: let contentMode, sizeToFit: let sizeToFit):
        return createStandardImageView(image: image, cornerRadius: cornerRadius, interactionEnabled: interactionEnabled, contentMode: contentMode, sizeToFit: sizeToFit)
        }
    }
    
    private func createStandardImageView(image: UIImage, cornerRadius: CGFloat, interactionEnabled: Bool, contentMode: UIViewContentMode, sizeToFit: Bool) -> UIImageView {
        
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = image
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = cornerRadius
        imageView.isUserInteractionEnabled = interactionEnabled
        imageView.contentMode = contentMode
        if sizeToFit {
            imageView.sizeToFit()
        }
        return imageView
    }
}
