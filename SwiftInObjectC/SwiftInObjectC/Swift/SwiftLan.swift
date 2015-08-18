//
//  SwiftLan.swift
//  SwiftInObjectC
//
//  Created by justinjing on 15/8/18.
//  Copyright (c) 2015年 justinjing. All rights reserved.
//

import UIKit

class SwiftLan: NSObject {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    @objc(initWithData:)
    init(data: String){
        println(data);
    }

}
