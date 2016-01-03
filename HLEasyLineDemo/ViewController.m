//
//  ViewController.m
//  HLEasyLineDemo
//
//  Created by HangqiLiu on 16/1/3.
//  Copyright © 2016年 HenryLio. All rights reserved.
//

#import "ViewController.h"
#import "HLVerticalLine.h"
#import "HLEasyLine.h"
#import "HLHorizontalLine.h"
#import "UIView+HLEasyLine.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *cview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    HLHorizontalLine* line = [[HLHorizontalLine alloc]init];
    [self.view addSubview:line];
    line.lineFrame = HLFrameMake(0, 100, 1, 300);
    
    [_cview addTopLineWidth:1 Color:[UIColor blackColor]];
    [_cview addBottomLineWidth:1 Color:[UIColor blackColor]];
    [_cview addLeftLineWidth:1 Color:[UIColor blackColor]];
    [_cview addRightLineWidth:1 Color:[UIColor blackColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
