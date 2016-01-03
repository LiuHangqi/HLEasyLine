//
//  HLHorizontalLine.m
//  HLEasyLineDemo
//
//  Created by HangqiLiu on 16/1/3.
//  Copyright © 2016年 HenryLio. All rights reserved.
//

#import "HLHorizontalLine.h"

@implementation HLHorizontalLine
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
    CGFloat x      = lineFrame.startPoint.x;
    CGFloat y      = lineFrame.startPoint.y;
    y = (int)(y*SINGLE_LINE_WIDTH) % 2 == 0 ? y : y - SINGLE_LINE_OFFSET;

    CGFloat width  = lineFrame.lineSize.length ;
    CGFloat height = lineFrame.lineSize.width * SINGLE_LINE_WIDTH;
    self.frame = CGRectMake(x, y , width, height);
}
@end
