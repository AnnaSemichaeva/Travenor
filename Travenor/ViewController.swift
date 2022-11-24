//
//  ViewController.swift
//  Travenor
//
//  Created by macuser on 11/16/22.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    scrollView.delegate = self
    
    private let pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 5
        
        return pageControl
    }()
    
    //var nameLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        //
        //        nameLabel = UILabel(frame: CGRect(x: 121, y: 385, width: 133, height: 42))
        //        view.addSubview(nameLabel)
        //        nameLabel.text = "Travenor"
        //        nameLabel.font = UIFont(name: "Geometric415BT-BlackA", size: 34)
        
        //A quick way to find the font name
        for family in UIFont.familyNames.sorted() {
            let names = UIFont.fontNames(forFamilyName: family)
            print("Family: \(family) Font names: \(names)")
        }
        
        //nameLabel.textColor = .white
        
        setupConstraints()
        
        

        configurePageControl()
    }
    
//    lazy var imageView: UIImageView = {
//        let image_1 = "Image_1.png"
//        let image = UIImage(named: image_1)
//        let imageView = UIImageView(image: image!)
//        return imageView
//    }()
//
//    lazy var imageView2: UIImageView = {
//        let image_2 = "LifeIsShort.png"
//        let image2 = UIImage(named: image_2)
//        let imageView2 = UIImageView(image: image2!)
//        return imageView2
//    }()
//
//    lazy var textView: UITextView = {
//        let textView = UITextView(frame: .zero)
//        textView.font = UIFont(name: "GillSansMT", size: 20)
//        textView.isEditable = false
//        //textView.text = "At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world"
//        let style = NSMutableParagraphStyle()
//        style.alignment = .center
//        let text = NSAttributedString(string: "At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world",
//                                      attributes: [NSAttributedString.Key.paragraphStyle:style])
//        textView.attributedText = text
//        textView.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
//        return textView
//    }()
    
    
    //var pageControl: UIPageControl = UIPageControl(frame: CGRectMake(50, 300, 200, 20))
    
    lazy var imageView3: UIImageView = {
        let image_3 = "ProgressBar_1.png"
        let image3 = UIImage(named: image_3)
        let imageView3 = UIImageView(image: image3!)
        imageView3.translatesAutoresizingMaskIntoConstraints = false
        return imageView3
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Get Started", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = view.tintColor
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        return button
    }()
    
//    lazy var containerStackView: UIStackView = {
//        let spacer = UIView()
//        let stackView = UIStackView(arrangedSubviews: [imageView,imageView2,textView, imageView3, registerButton])
//        stackView.axis = .vertical
//        stackView.spacing = 16.0
//        return stackView
//    }()
    
    let onboardingCollectionView: OnboardingCollectionView = {
        let view = OnboardingCollectionView()
        view.translatesAutoresizingMaskIntoConstraints = false
        //view.backgroundColor = .blue
        return view
    }()
    
    
    
    
//    func configurePageControl() {
//         self.pageControl.numberOfPages = 4
//         self.pageControl.currentPage = 0
//        self.pageControl.tintColor = UIColor.red
//         self.pageControl.pageIndicatorTintColor = UIColor.black
//         self.pageControl.currentPageIndicatorTintColor = UIColor.green
//         self.view.addSubview(pageControl)
//     }
    
//    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
//        pageControl.currentPage = Int(pageNumber)
//    }
    
    
    
    func setupConstraints() {
//        view.addSubview(containerStackView)
//        containerStackView.translatesAutoresizingMaskIntoConstraints = false
        
        let safeArea = view.safeAreaLayoutGuide
        // 5. Call .activate method to enable the defined constraints
//        NSLayoutConstraint.activate([
//            // 6. Set containerStackView edges to superview with 24 spacing
//            containerStackView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 24),
//            containerStackView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -24),
//            containerStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 24),
//            containerStackView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -24),
//            // 7. Set button height
//            registerButton.heightAnchor.constraint(equalToConstant: 50),
//
//            //imageView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 0),
//            //imageView2.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 5),
//
//            //imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
//            //imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5),
//            //imageView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 80),
//            //imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -15),
//            imageView.heightAnchor.constraint(equalToConstant: 400),
//
//            imageView2.heightAnchor.constraint(equalToConstant: 100),
//            imageView2.widthAnchor.constraint(equalToConstant: 50),
//
//
//            imageView3.heightAnchor.constraint(equalToConstant: 7),
//            //imageView3.widthAnchor.constraint(equalToConstant: 62),
//            imageView3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 170),
//            imageView3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -150),
//            //imageView3.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 671)
//
//
//        ])
        
//        onboardingCollectionView.putTo(parent: view)
        view.addSubview(onboardingCollectionView)
        onboardingCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        onboardingCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        onboardingCollectionView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor).isActive = true
        onboardingCollectionView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor).isActive = true
        
        view.addSubview(registerButton)
        view.addSubview(imageView3)
        view.addSubview(pageControl)
        
        NSLayoutConstraint.activate([
        registerButton.heightAnchor.constraint(equalToConstant: 50),
        registerButton.widthAnchor.constraint(equalTo: safeArea.widthAnchor),
        registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        //registerButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16),
        registerButton.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -24),
        
        //imageView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 0),
        
        imageView3.heightAnchor.constraint(equalToConstant: 7),
        imageView3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        imageView3.widthAnchor.constraint(equalToConstant: 62),
        //imageView3.widthAnchor.constraint(equalToConstant: 30),
//        imageView3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 170),
//        imageView3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -150),
        imageView3.bottomAnchor.constraint(equalTo: registerButton.topAnchor, constant: -16)
        
        ])
        
        
        
    }
    
    // 8. To be updated
    @objc func presentModalController() {
        //            let vc = CustomModalViewController()
        //                vc.modalPresentationStyle = .overCurrentContext
        //                // Keep animated value as false
        //                // Custom Modal presentation animation will be handled in VC itself
        //                self.present(vc, animated: false)
    }
}

//        setupView()
//        setupConstraints()
//        // 3. Add action
//        registerButton.addTarget(self, action: #selector(presentModalController), for: .touchUpInside)
//    }
//
//    func setupView() {
//        // cosmetics
//        view.backgroundColor = .systemBackground
//    }
//
//    // 4. Add subviews and set constraints
//    func setupConstraints() {
//        view.addSubview(containerStackView)
//        containerStackView.translatesAutoresizingMaskIntoConstraints = false
//
//        let safeArea = view.safeAreaLayoutGuide
//        // 5. Call .activate method to enable the defined constraints
//        NSLayoutConstraint.activate([
//            // 6. Set containerStackView edges to superview with 24 spacing
//            containerStackView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 24),
//            containerStackView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -24),
//            containerStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 24),
//            containerStackView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -24),
//            // 7. Set button height
//            registerButton.heightAnchor.constraint(equalToConstant: 50)
//        ])
//    }
//
//    
//
////        lazy var containerView: UIView = {
////                let containerView = UIView()
////                view.addSubview(containerView)
////                containerView.snp.makeConstraints { (make) in
////                    make.height.equalTo(400)
////                    make.width.equalTo(400)
////                    make.centerY.equalTo(view)
////                    make.left.equalTo(view.snp_rightMargin)
////                }
////                containerView.backgroundColor = .gray
////                return containerView
////            }()
//
//        // 1. Defined UI views
//            lazy var titleLabel: UILabel = {
//                let label = UILabel()
//                label.text = "Lorem Ipsum"
//                label.font = .boldSystemFont(ofSize: 32)
//                return label
//            }()
//
//            lazy var textView: UITextView = {
//                let textView = UITextView(frame: .zero)
//                textView.font = UIFont.systemFont(ofSize: 16)
//                textView.isEditable = false
//                textView.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sem fringilla ut morbi tincidunt augue interdum. Ut morbi tincidunt augue interdum velit euismod in pellentesque massa. Pulvinar etiam non quam lacus suspendisse faucibus interdum posuere. Mi in nulla posuere sollicitudin aliquam ultrices sagittis orci a. Eget nullam non nisi est sit amet. Odio pellentesque diam volutpat commodo. Id eu nisl nunc mi ipsum faucibus vitae. "
//                return textView
//            }()
//
//            lazy var registerButton: UIButton = {
//                let button = UIButton()
//                button.setTitle("Get Started", for: .normal)
//                button.setTitleColor(.white, for: .normal)
//                button.backgroundColor = view.tintColor
//                button.layer.cornerRadius = 8
//                button.clipsToBounds = true
//                return button
//            }()
//
//            lazy var containerStackView: UIStackView = {
//                let spacer = UIView()
//                let stackView = UIStackView(arrangedSubviews: [titleLabel, textView, spacer, registerButton])
//                stackView.axis = .vertical
//                stackView.spacing = 16.0
//                return stackView
//            }()







