//
//  UIView+HLEasyLine.h
//  HLEasyLineDemo
//
//  Created by HangqiLiu on 16/1/3.
//  Copyright © 2016年 HenryLio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HLEasyLine.h"

@interface UIView (HLEasyLine)
@property (nonatomic,assign) CGFloat hl_x;
@property (nonatomic,assign) CGFloat hl_y;
@property (nonatomic,assign) CGFloat hl_w;
@property (nonatomic,assign) CGFloat hl_h;

- (void)addTopLineWidth:(CGFloat)width Color:(UIColor*)color;
- (void)addBottomLineWidth:(CGFloat)width Color:(UIColor*)color;
- (void)addLeftLineWidth:(CGFloat)width Color:(UIColor*)color;
- (void)addRightLineWidth:(CGFloat)width Color:(UIColor*)color;

@end
