//
//  HLEasyLine.h
//  HLEasyLineDemo
//
//  Created by HangqiLiu on 16/1/3.
//  Copyright © 2016年 HenryLio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HLVerticalLine.h"
#import "HLHorizontalLine.h"
@interface HLEasyLine : NSObject

+ (HLVerticalLine*)verticalLineWithLineFrame:(HLFrame)lineFrame;
+ (HLVerticalLine*)verticalLine;

+ (HLHorizontalLine*)horizontalLineWithLineFrame:(HLFrame)lineFrame;
+ (HLHorizontalLine*)horizontalLine;

@end
