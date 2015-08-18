//
//  ViewController.m
//  SwiftInObjectC
//
//  Created by justinjing on 15/8/18.
//  Copyright (c) 2015年 justinjing. All rights reserved.
//

#import "ViewController.h"
#import "SwiftInObjectC-Swift.h"

@interface ViewController ()
@property (nonatomic ,strong) LTMorphingLabel  *testLabel;
@property (nonatomic ,strong) NSArray *textArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor colorWithRed:237 / 255.0 green:85 / 255.0 blue:101 / 255.0 alpha:1.0];
    
    SwiftLan *tempString = [[SwiftLan alloc] initWithData:@"Test Swift"];
    NSLog(@"%@",tempString);
    
    _textArray = @[@"What is design?",
                   @"Swift Design",
                   @"Design is not just",
                   @"What it looks like",
                   @"And feels like.",
                   @"Is how it works.",
                   @"-Steve Jobs",
                   @"Older people",
                   @"Objective-C"];

    [self.view addSubview:({
        NVActivityIndicatorType type  = NVActivityIndicatorTypePacman;
        NVActivityIndicatorView *temp = [[NVActivityIndicatorView alloc] initWithFrame:CGRectMake(0,0,80,80) type:type];
        temp.center = self.view.center;
        [temp startAnimation];
        temp;
    })];
    
    [self.view addSubview:({
        _testLabel = [[LTMorphingLabel alloc]initWithFrame:CGRectMake(0,200,self.view.bounds.size.width,80)];
        _testLabel.text = @"";
        _testLabel.textAlignment = NSTextAlignmentCenter;
        _testLabel.textColor = [UIColor whiteColor];
        _testLabel.font = [UIFont systemFontOfSize:28];
        _testLabel;
    })];
    
    [self performSelector:@selector(ChangeTextEffect) withObject:nil afterDelay:0.1];
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(ChangeTextEffect) userInfo:nil repeats:YES];
}


-(void)ChangeTextEffect
{
    int index = arc4random()%9;
    switch (index) {
        case 0:
            _testLabel.morphingEffect = LTMorphingEffectBurn;
            break;
        case 1:
            _testLabel.morphingEffect = LTMorphingEffectEvaporate;
            break;
        case 2:
            _testLabel.morphingEffect = LTMorphingEffectFall;
            break;
        case 3:
            _testLabel.morphingEffect = LTMorphingEffectPixelate;
            break;
        case 4:
            _testLabel.morphingEffect = LTMorphingEffectAnvil;
            break;
        case 5:
            _testLabel.morphingEffect = LTMorphingEffectScale;
            break;
        case 6:
            _testLabel.morphingEffect = LTMorphingEffectSparkle;
            break;
        default:
            _testLabel.morphingEffect = LTMorphingEffectAnvil;
            break;
    }
    
    _testLabel.text =  _textArray[index];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
