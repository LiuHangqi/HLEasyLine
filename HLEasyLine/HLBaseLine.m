//
//  HLBaseLine.m
//  HLEasyLineDemo
//
//  Created by HangqiLiu on 16/1/3.
//  Copyright © 2016年 HenryLio. All rights reserved.
//

#import "HLBaseLine.h"

@implementation HLBaseLine

- (instancetype)init{
    self = [self initWithFrame:CGRectZero];
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.lineColor = [UIColor grayColor];
    }
    return self;
}

- (void)setLineColor:(UIColor *)lineColor{
    self.backgroundColor = lineColor;
}

@end
