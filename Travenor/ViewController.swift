//
//  ViewController.swift
//  Travenor
//
//  Created by macuser on 11/16/22.
//

import UIKit

class ViewController: UIViewController {
    
    var nameLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        view.backgroundColor = #colorLiteral(red: 0.003531566821, green: 0.5280565619, blue: 0.9950402379, alpha: 1)
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
        
        nameLabel.textColor = .white
        
        setupConstraints()
    }
    
    lazy var imageView: UIImageView = {
        let image_1 = "image_1.png"
        let image = UIImage(named: image_1)
        let imageView = UIImageView(image: image!)
        return imageView
    }()
    
    lazy var registerButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Get Started", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = view.tintColor
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        return button
    }()
    
    lazy var containerStackView: UIStackView = {
            let spacer = UIView()
            let stackView = UIStackView(arrangedSubviews: [imageView,registerButton])
            stackView.axis = .vertical
            stackView.spacing = 16.0
            return stackView
        }()
    
    func setupConstraints() {
            view.addSubview(containerStackView)
            containerStackView.translatesAutoresizingMaskIntoConstraints = false
            
            let safeArea = view.safeAreaLayoutGuide
            // 5. Call .activate method to enable the defined constraints
            NSLayoutConstraint.activate([
                // 6. Set containerStackView edges to superview with 24 spacing
                containerStackView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 24),
                containerStackView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -24),
                containerStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 24),
                containerStackView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -24),
                // 7. Set button height
                registerButton.heightAnchor.constraint(equalToConstant: 50)
            ])
        }
        
        // 8. To be updated
        @objc func presentModalController() {
            //
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
        //    // 8. To be updated
        //    @objc func presentModalController() {
        //        //
        //    }
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
        
        
    
    
    
    

