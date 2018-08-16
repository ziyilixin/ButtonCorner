//
//  ViewController.m
//  ButtonCorner
//
//  Created by hjbsj on 2018/8/16.
//  Copyright © 2018年 hjb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置按钮全部圆角
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 200, 120, 80);
    [button setTitle:@"圆角" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:button];
    
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:button.bounds cornerRadius:10.0];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = button.bounds;
    maskLayer.path = maskPath.CGPath;
    button.layer.mask = maskLayer;
    
    //设置按钮部分圆角
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(100, 300, 120, 80);
    [button2 setTitle:@"圆角2" forState:UIControlStateNormal];
    button2.backgroundColor = [UIColor redColor];
    [self.view addSubview:button2];
    
    UIBezierPath *maskPath2 = [UIBezierPath bezierPathWithRoundedRect:button2.bounds byRoundingCorners:UIRectCornerTopLeft | UIRectCornerBottomLeft cornerRadii:CGSizeMake(10, 10)];
    CAShapeLayer *maskLayer2 = [[CAShapeLayer alloc] init];
    maskLayer2.frame = button.bounds;
    maskLayer2.path = maskPath2.CGPath;
    button2.layer.mask = maskLayer2;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
