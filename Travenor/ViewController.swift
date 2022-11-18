//
//  ViewController.swift
//  Travenor
//
//  Created by macuser on 11/16/22.
//

import UIKit
var nameLabel = UILabel()
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = #colorLiteral(red: 0.003531566821, green: 0.5280565619, blue: 0.9950402379, alpha: 1)
        
        nameLabel = UILabel(frame: CGRect(x: 121, y: 385, width: 133, height: 42))
        view.addSubview(nameLabel)
        nameLabel.text = "Travenor"
        
        nameLabel.font = UIFont(name: "Geometric", size: 34)
        //nameLabel.font = UIFont(name: "Geometr415 Blk BT", size: 34)
        
        
    }


}

