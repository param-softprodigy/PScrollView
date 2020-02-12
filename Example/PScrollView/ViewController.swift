//
//  ViewController.swift
//  PScrollView
//
//  Created by param-softprodigy on 02/12/2020.
//  Copyright (c) 2020 param-softprodigy. All rights reserved.
//

import UIKit
import PScrollView

class ViewController: UIViewController {
    
   let scrollView = PScrollView()
    let scrollViewContainer = PScrollViewContainer(axis: .vertical, spacing: 10)
    let scrollViewElement0 = PScrollViewElement(height: 1200, backgroundColor: .purple).withBackground(image: #imageLiteral(resourceName: "icon"), contentMode: .scaleAspectFit)
    let scrollViewElement1 = PScrollViewElement(height: 1200, backgroundColor: .purple).withBackground(image: #imageLiteral(resourceName: "icon"), contentMode: .scaleAspectFit)
    
    let label = UILabel()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        label.text = ""
        
        view.addScrollView(scrollView,
                           withSafeArea: .none,
                           hasStatusBarCover: true,
                           statusBarBackgroundColor: .white,
                           container: scrollViewContainer,
                           elements: [scrollViewElement0, scrollViewElement1])
        
        scrollViewElement1.addSubview(label)
        label.edgeTo(scrollViewElement1)
    }

}

