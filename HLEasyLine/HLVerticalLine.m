//
//  HLVerticalLine.m
//  HLEasyLineDemo
//
//  Created by HangqiLiu on 16/1/3.
//  Copyright © 2016年 HenryLio. All rights reserved.
//

#import "HLVerticalLine.h"

@implementation HLVerticalLine

- (instancetype)init{
    if (self = [super init]) {
        
    }
    return self;
}

- (instancetype)initWithLineFrame:(HLFrame)lineFrame{
    if (self) {
        self = [super init];
        self.lineFrame = lineFrame;
    }
    return self;
}

- (void)setLineFrame:(HLFrame)lineFrame{
    CGFloat x = lineFrame.startPoint.x;
    x = (int)(x*SINGLE_LINE_WIDTH) % 2 == 0 ? x : x - SINGLE_LINE_OFFSET;
    CGFloat y      = lineFrame.startPoint.y;
    CGFloat width  = lineFrame.lineSize.width * SINGLE_LINE_WIDTH;
    CGFloat height = lineFrame.lineSize.length;
    self.frame = CGRectMake(x, y , width, height);
}

@end
