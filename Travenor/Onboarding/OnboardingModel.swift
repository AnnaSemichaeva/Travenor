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
        data = [OnboardingCellData(text1: "At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world", image: UIImage(named: "Image_1")),
                OnboardingCellData(text1: "2", image: UIImage(named: "Image_2")),
                OnboardingCellData(text1: "3", image: UIImage(named: "Image_3"))]
    }
    
    struct OnboardingCellData {
        var text1: String
        var image: UIImage?
    }
}
