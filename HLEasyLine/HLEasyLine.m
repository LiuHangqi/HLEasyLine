//
//  HLEasyLine.m
//  HLEasyLineDemo
//
//  Created by HangqiLiu on 16/1/3.
//  Copyright © 2016年 HenryLio. All rights reserved.
//

#import "HLEasyLine.h"

@implementation HLEasyLine
+ (HLVerticalLine*)verticalLineWithLineFrame:(HLFrame)lineFrame{
    HLVerticalLine* line = [[HLVerticalLine alloc]initWithLineFrame:lineFrame];
    return line;
}
+ (HLVerticalLine *)verticalLine{
    HLVerticalLine* line = [[HLVerticalLine alloc]init];
    return line;
}

+ (HLHorizontalLine *)horizontalLineWithLineFrame:(HLFrame)lineFrame{
    HLHorizontalLine* line = [[HLHorizontalLine alloc]initWithLineFrame:lineFrame];
    return line;
}
+ (HLHorizontalLine *)horizontalLine{
    HLHorizontalLine* line = [[HLHorizontalLine alloc]init];
    return line;
}

@end
