//
//  OnboardingCollectionViewCell.swift
//  Travenor
//
//  Created by macuser on 11/20/22.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    lazy var imageView: UIImageView = {
        let image_1 = "Image_1.png"
        let image = UIImage(named: image_1)
        let imageView = UIImageView(image: image!)
        return imageView
    }()
    
    lazy var imageView2: UIImageView = {
        let image_2 = "LifeIsShort.png"
        let image2 = UIImage(named: image_2)
        let imageView2 = UIImageView(image: image2!)
        return imageView2
    }()
    
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
    
    lazy var containerStackView: UIStackView = {
        let spacer = UIView()
        let stackView = UIStackView(arrangedSubviews: [imageView,imageView2,textView])
        stackView.axis = .vertical
        stackView.spacing = 16.0
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setData(item: OnboardingModel.OnboardingCellData) {
        imageView.image = item.image
        textView.text = item.text
    }
    
    func setUpConstraints() {
        self.addSubview(containerStackView)
        containerStackView.translatesAutoresizingMaskIntoConstraints = false
        
        let safeArea = self.safeAreaLayoutGuide
        
        // 5. Call .activate method to enable the defined constraints
        NSLayoutConstraint.activate([
            // 6. Set containerStackView edges to superview with 24 spacing
            containerStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            containerStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            containerStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            containerStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            
            
            //            containerStackView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 24),
            //            containerStackView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -24),
            //            containerStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 24),
            //            containerStackView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -24),
            
            imageView.heightAnchor.constraint(equalToConstant: 500),
            imageView.topAnchor.constraint(equalTo: containerStackView.topAnchor, constant: 0),
            
            imageView2.heightAnchor.constraint(equalToConstant: 100),
            imageView2.widthAnchor.constraint(equalToConstant: 50)
        ])
    }
}
