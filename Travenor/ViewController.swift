//
//  ViewController.swift
//  Travenor
//
//  Created by macuser on 11/16/22.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        //A quick way to find the font name
//        for family in UIFont.familyNames.sorted() {
//            let names = UIFont.fontNames(forFamilyName: family)
//            print("Family: \(family) Font names: \(names)")
//        }
        
        setupConstraints()
        onboardingCollectionView.delegate = self
        registerButton.addTarget(self, action: #selector(scrollToNextPage), for: .touchUpInside)
    }
    
    @objc private func scrollToNextPage(_ sender: Any) {
        onboardingCollectionView.scrollToNextPage()
    }
    
    private var pageControl: UIPageControl!
    
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
    
    let onboardingCollectionView: OnboardingCollectionView = {
        let view = OnboardingCollectionView()
        view.translatesAutoresizingMaskIntoConstraints = false
        //view.backgroundColor = .blue
        return view
    }()
    
    func configurePageControl() -> UIPageControl {
        let pageControl = UIPageControl()
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.numberOfPages = 5
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        pageControl.currentPageIndicatorTintColor = #colorLiteral(red: 0.05098039216, green: 0.431372549, blue: 0.9921568627, alpha: 1)
        
        view.addSubview(pageControl)
        //pageControl.heightAnchor.constraint(equalToConstant: 7).isActive = true
        pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //pageControl.widthAnchor.constraint(equalToConstant: 62).isActive = true
        pageControl.bottomAnchor.constraint(equalTo: registerButton.topAnchor, constant: -16).isActive = true
        return pageControl
     }
    
    func setupConstraints() {
        let safeArea = view.safeAreaLayoutGuide

        view.addSubview(onboardingCollectionView)
        onboardingCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        onboardingCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        onboardingCollectionView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor).isActive = true
        onboardingCollectionView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor).isActive = true
        
        view.addSubview(registerButton)
        //view.addSubview(imageView3)
        
        NSLayoutConstraint.activate([
        registerButton.heightAnchor.constraint(equalToConstant: 50),
        registerButton.widthAnchor.constraint(equalTo: safeArea.widthAnchor),
        registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        //registerButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16),
        registerButton.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -24),
        
        //imageView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 0),
        ])
        self.pageControl = configurePageControl()
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

extension ViewController: OnboardingCollectionViewDelegate {
    func pageSelected(page: Int) {
        pageControl.currentPage = page
        
        if page >= 1 && page <= 5 {
            registerButton.setTitle("Next", for: .normal)
        } else {
            
        }
    }
}



