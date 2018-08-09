//
//  Injection+Extension.swift
//  InjectionExample
//
//  Created by 范摇 on 2018/8/8.
//  Copyright © 2018年 范摇. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    #if DEBUG
    @objc func injected() {
        print("injected UIViewController")
        for subV in view.subviews {
            subV.removeFromSuperview()
        }
        //如果使用layer 同理删除一下即可
        viewDidLoad()
    }

    #endif

}

extension UIView {
    #if DEBUG
    @objc func injected() {
        print("injected UIView")
        guard let lastVC = UIApplication.shared.keyWindow?.rootViewController else {
            return
        }
        
        for subV in lastVC.view.subviews {
            subV.removeFromSuperview()
        }
        lastVC.viewDidLoad()
    }
    #endif
}
