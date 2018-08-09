//
//  MYView.swift
//  GettingStarted
//
//  Created by 范摇 on 2018/8/8.
//  Copyright © 2018年 User. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class MYView: UIView {
    // MARK: - Data
    var data = "" {
        didSet {
            titleL.numberOfLines = 0
            titleL.text = data
        }
    }
    
    // MARK: - Subviews
    lazy var imgV: UIImageView = {
        let imgV = UIImageView()
        imgV.image = UIImage.init(named: "2.jpg")
//        imgV.contentMode = .scaleAspectFit
        return imgV
    }()
    
    private lazy var titleL: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = UIColor.red
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    init() {
        super.init(frame: CGRect())
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - LayoutUI
    
    private func setupUI() {
        addSubview(imgV)
        addSubview(titleL)
        
        imgV.snp.makeConstraints { (make) in
            make.left.equalTo(100)
            make.top.equalTo(100)
            make.height.equalTo(100)
            let width = 100 * imgV.image!.size.width / imgV.image!.size.height
            make.width.equalTo(width)
        }
        
        titleL.snp.makeConstraints { (make) in
            make.left.equalTo(100)
            make.top.equalTo(imgV.snp.bottom)
            make.width.height.equalTo(100)
        }
    }
    
    // MARK: - Events
}
