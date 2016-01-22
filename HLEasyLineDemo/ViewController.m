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

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *cview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    HLHorizontalLine* line = [HLEasyLine horizontalLineWithLineFrame:HLFrameMake(0, 100, 1, 300) LineColor:[UIColor redColor]];
    [self.view addSubview:line];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
