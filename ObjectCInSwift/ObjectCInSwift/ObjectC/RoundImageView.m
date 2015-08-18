//
//  RoundImageView.m
//  ObjectCInSwift
//
//  Created by justinjing on 15/8/18.
//  Copyright (c) 2015年 justinjing. All rights reserved.
//

#import "RoundImageView.h"

@implementation RoundImageView

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.img = [[UIImageView alloc] initWithFrame:self.bounds];
        [self addSubview:self.img];
    }
    return self;
}

-(void)drawRect:(CGRect)rect
{
    // (here with the size of an UIImageView)
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO,1.0);
    // Add a clip before drawing anything, in the shape of an rounded rect
    [[UIBezierPath bezierPathWithRoundedRect:self.bounds
                                cornerRadius:self.bounds.size.width*0.5] addClip];
    // Draw your image
    [self.img.image drawInRect:self.bounds];
    // Get the image, here setting the UIImageView image
    self.img.image = UIGraphicsGetImageFromCurrentImageContext();
    // Lets forget about that we were drawing
    UIGraphicsEndImageContext();
}

@end
