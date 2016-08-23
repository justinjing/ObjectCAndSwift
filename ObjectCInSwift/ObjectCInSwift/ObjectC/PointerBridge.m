//
//  PointerBridge.m
//  ObjectCInSwift
//
//  Created by justinjing on 15/9/9.
//  Copyright (c) 2015年 justinjing. All rights reserved.
//

#import "PointerBridge.h"

@implementation PointerBridge
- (instancetype)init
{
    self = [super init];
    if (self) {
        count = 23;
    }
    return self;
}


- (int *) getCountPtr{
    return &count;
}


- (void)setCount:(int)newCount{
    int mCount = 500;
    [self setCountPtr:&mCount];
}

- (void)setCountPtr:(int *)newCountPtr{
    count = *newCountPtr;
}

@end
