//
//  LabelFactory.swift
//  TinderSwiping
//
//  Created by David on 09/01/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

enum LabelFactory {
    
    case standardLabel(text: String, textColor: UIColor, fontStyle: UIFontTextStyle, textAlignment: NSTextAlignment?, sizeToFit: Bool, adjustToFit: Bool)
    
    var new: UILabel {
        switch self {
        case .standardLabel(text: let text, textColor: let textColor, fontStyle: let fontStyle, textAlignment: let textAlignment, sizeToFit: let sizeToFit, adjustToFit: let adjustToFit):
            return createStandardLabel(text: text, textColor: textColor, fontStyle: fontStyle, textAlignment: textAlignment, sizeToFit: sizeToFit, adjustToFit: adjustToFit)
        }
    }
    
    private func createStandardLabel(text: String, textColor: UIColor, fontStyle: UIFontTextStyle, textAlignment: NSTextAlignment?, sizeToFit: Bool, adjustToFit: Bool) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.adjustsFontSizeToFitWidth = adjustToFit
        label.text = text
        label.font = UIFont.preferredFont(forTextStyle: fontStyle)
        label.textAlignment = textAlignment ?? .left
        if sizeToFit {
            label.sizeToFit()
        }
        return label
    }
}
