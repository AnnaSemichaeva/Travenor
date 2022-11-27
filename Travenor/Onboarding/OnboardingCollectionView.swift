//
//  OnboardingCollectionView.swift
//  Travenor
//
//  Created by macuser on 11/20/22.
//

import UIKit

class OnboardingCollectionView: UIView {
    
    weak var delegate: OnboardingCollectionViewDelegate?
    
    var collectionView: UICollectionView = {
        
        let screenSize: CGRect = UIScreen.main.bounds
        
        // layout
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: screenSize.width, height: screenSize.height)
        layout.minimumInteritemSpacing = 0
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.contentMode = .center
        collectionView.backgroundColor = .clear
        
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        
        collectionView.isPagingEnabled = true
        //collectionView.isScrollEnabled = false

        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialize()
    }
    
    func initialize() {
        collectionView.putTo(parent: self)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(OnboardingCollectionViewCell.self, forCellWithReuseIdentifier: "OnboardingCollectionViewCell")
    }
    
    func scrollToPage(pageNumber: Int) {
        collectionView.setContentOffset(CGPoint(x: getOffsetXByPageNumber(pageNumber: pageNumber), y: 0), animated: true)
    }
    
    func scrollToNextPage() {
        let pageNumber = Int(round(collectionView.contentOffset.x / collectionView.frame.size.width))
        let nextPageNumber = pageNumber + 1
        
        let targetXOffset = getOffsetXByPageNumber(pageNumber: nextPageNumber)
        print("targetXOffset: \(targetXOffset)")
        collectionView.setContentOffset(CGPoint(x: getOffsetXByPageNumber(pageNumber: nextPageNumber), y: 0), animated: true)
    }
    
    private func getOffsetXByPageNumber(pageNumber: Int) -> CGFloat {
        return collectionView.frame.size.width * CGFloat(pageNumber)
    }
}

extension OnboardingCollectionView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return data[section]?.count ?? 0
        return 5
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnboardingCollectionViewCell", for: indexPath) as! OnboardingCollectionViewCell
//        let cellData = data[indexPath.section]![indexPath.row]
//        cell.build(cellData: cellData, presenter: self)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    // for scrolling of scroll view
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        delegate?.pageSelected(page: Int(pageNumber))
    }
    
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        delegate?.pageSelected(page: Int(pageNumber))
    }
}

protocol OnboardingCollectionViewDelegate: AnyObject {
    func pageSelected(page: Int)
}
