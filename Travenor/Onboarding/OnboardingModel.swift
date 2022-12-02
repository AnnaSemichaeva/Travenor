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
        data = [OnboardingCellData(text: "1", image: UIImage(named: "Image_1")),
                OnboardingCellData(text: "2", image: UIImage(named: "Image_2")),
                OnboardingCellData(text: "3", image: UIImage(named: "Image_3"))]
    }
    
    struct OnboardingCellData {
        var text: String
        var image: UIImage?
    }
}
