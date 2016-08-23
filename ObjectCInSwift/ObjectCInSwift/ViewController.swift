//
//  ViewController.swift
//  ObjectCInSwift
//
//  Created by justinjing on 15/8/18.
//  Copyright (c) 2015年 justinjing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: CGFloat(237 / 255.0), green: CGFloat(85 / 255.0), blue: CGFloat(101 / 255.0), alpha: 1)
        // Do any additional setup after loading the view, typically from a nib.
    
        let imageview =  RoundImageView(frame: CGRectMake(0,0,80,80))
        imageview.backgroundColor = UIColor.clearColor()
        imageview.img.image = UIImage(named:"imga")
        imageview.center = self.view.center
        self.view.addSubview(imageview);
        
//        http://www.csdn.net/article/2015-09-07/2825641
    
        let brige = PointerBridge()
        let theInt = brige.getCountPtr()
        let countValue = theInt.memory
        println(countValue)
//
//        let newIntPtr  = 100 ;
//        bridge.setCountPtr()
//        print(theInt.memory)
//        
//        brige.setCount(1000)
//        println(countValue)
    

        let newIntPtr = UnsafeMutablePointer<Int32>.alloc(1)
        newIntPtr.memory = 100
        brige.setCountPtr(newIntPtr)
        println(theInt.memory)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
