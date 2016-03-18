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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    XLSlider *slider = [[XLSlider alloc] initWithFrame:CGRectMake(0, 300, self.view.frame.size.width, 40)];
    slider.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:slider];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
