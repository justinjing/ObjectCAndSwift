//
//  PointerBridge.h
//  ObjectCInSwift
//
//  Created by justinjing on 15/9/9.
//  Copyright (c) 2015年 justinjing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PointerBridge : NSObject{
    int count;
}

- (int *) getCountPtr;

- (void)setCount:(int)newCount;

- (void)setCountPtr:(int *)newCountPtr;

@end
