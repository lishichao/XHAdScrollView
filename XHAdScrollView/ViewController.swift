//
//  ViewController.swift
//  XHAdScrollView
//
//  Created by 江欣华 on 16/3/11.
//  Copyright © 2016年 jxh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let frame = CGRectMake(0, 20, view.bounds.width, view.bounds.width*0.6)
        let imageView = ["2.jpg","3.jpg","4.jpg"]
        
        let loopView = XHAdLoopView(frame: frame, images: imageView, autoPlay: true, delay: 3, isFromNet: false)
        loopView.delegate = self
        
        view.addSubview(loopView)
        
    }
    
}

//遵循协议代理，调用代理方法
extension ViewController : XHAdLoopViewDelegate {
    func adLoopView(adLoopView: XHAdLoopView, IconClick index: NSInteger) {
        print(index)
    }
}


