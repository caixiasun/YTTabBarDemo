//
//  YTTabBarController.swift
//  YTTabBarDemo
//
//  Created by 侯康柱 on 16/10/21.
//  Copyright © 2016年 yatou. All rights reserved.
//

import UIKit

let YTTabBar_Height:CGFloat = 49
let YTScreenWidth = UIScreen.main.bounds.size.width
let YTScreenHeight = UIScreen.main.bounds.size.height

class YTTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var array:[UIViewController] = []
        let first = FirstViewController()
        let second = SecondViewController()
        let third = ThirdViewController()
        array.append(first)
        array.append(second)
        array.append(third)
        self.viewControllers = array
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tabBar.isHidden = true
        
        let v = UIView(frame: CGRect(x: 0, y: YTScreenHeight-YTTabBar_Height, width: YTScreenWidth, height: YTTabBar_Height))
        v.backgroundColor = UIColor.white
        self.view.addSubview(v)
        let blur = UIBlurEffect(style: .light)
        let effect = UIVisualEffectView(effect: blur)
        effect.bounds = v.bounds
        v.addSubview(effect)
        
    }
}
