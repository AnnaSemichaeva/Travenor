//
//  OnboardingModel.swift
//  Travenor
//
//  Created by macuser on 12/3/22.
//

import UIKit

class OnboardingModel {
    
    var data: [OnboardingCellData]
    
    
    
    init() {
        data = [OnboardingCellData(text: "At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world", image: UIImage(named: "Image_1")),
                OnboardingCellData(text: "2", image: UIImage(named: "Image_2")),
                OnboardingCellData(text: "3", image: UIImage(named: "Image_3"))]
    }
    
    lazy var textView: UITextView = {
        let textView = UITextView(frame: .zero)
        textView.font = UIFont(name: "GillSansMT", size: 20)
        textView.isEditable = false
        //textView.text = "At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world"
        let style = NSMutableParagraphStyle()
        style.alignment = .center
        let text = NSAttributedString(string: "At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world",
                                      attributes: [NSAttributedString.Key.paragraphStyle:style])
        textView.attributedText = text
        textView.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        return textView
    }()
    
    struct OnboardingCellData {
        //var text2: UITextView
        var text: String
        var image: UIImage?
    }
}
