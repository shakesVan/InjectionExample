//
//  MYVC.swift
//  GettingStarted
//
//  Created by 范摇 on 2018/8/7.
//  Copyright © 2018年 User. All rights reserved.
//

import Foundation
import UIKit

class MYVC: UIViewController {
    
    var myView: MYView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        myView.data = "this is my way jgjj"
    }
    
    func setupView() {
        view.backgroundColor = UIColor.white
        myView = MYView()
//        myView.backgroundColor = UIColor.blue
        myView.backgroundColor = UIColor.green
        myView.layer.cornerRadius = 5
        view.addSubview(myView)
//        myView.frame = CGRect(x: 50, y: 50, width: 300, height: 300)
        myView.snp.makeConstraints { (make) in
            make.left.equalTo(50)
            make.top.equalTo(20)
            make.width.height.equalTo(300)
        }
    }
}

