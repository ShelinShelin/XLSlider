//
//  ViewController.m
//  XLSlider
//
//  Created by Shelin on 16/3/18.
//  Copyright © 2016年 GreatGate. All rights reserved.
//

#import "ViewController.h"
#import "XLSlider.h"

@interface ViewController ()
{
    XLSlider *_slider;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _slider = [[XLSlider alloc] init];
    _slider.frame = CGRectMake(0, 300, self.view.frame.size.width, 40);
//    slider.sliderColor = [UIColor redColor];
//    slider.middleColor = [UIColor redColor];
//    slider.maxColor = [UIColor whiteColor];
//    _slider.lineWidth = 3.0f;
    _slider.sliderDiameter = 20.0f;
    [self.view addSubview:_slider];
    
    _slider.valueChangeBlock = ^(XLSlider *slider) {
        NSLog(@"valueChangeBlock --- %f", slider.value);
    };
    _slider.finishChangeBlock = ^(XLSlider *slider) {
        NSLog(@"finishChangeBlock -- %f", slider.value);
    };
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    _slider.value += 0.01;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
