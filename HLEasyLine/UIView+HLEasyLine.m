//
//  UIView+HLEasyLine.m
//  HLEasyLineDemo
//
//  Created by HangqiLiu on 16/1/3.
//  Copyright © 2016年 HenryLio. All rights reserved.
//

#import "UIView+HLEasyLine.h"

@implementation UIView (HLEasyLine)

- (void)addTopLineWidth:(CGFloat)width Color:(UIColor *)color{
    HLFrame lineFrame = HLFrameMake(0, 0, width, self.hl_w);
    HLHorizontalLine* line = [HLEasyLine horizontalLineWithLineFrame:lineFrame];
    [self addSubview:line];
}

- (void)addBottomLineWidth:(CGFloat)width Color:(UIColor *)color{
    HLFrame lineFrame = HLFrameMake(0, self.hl_h, width, self.hl_w);
    HLHorizontalLine* line = [HLEasyLine horizontalLineWithLineFrame:lineFrame];
    [self addSubview:line];
}

- (void)addLeftLineWidth:(CGFloat)width Color:(UIColor *)color{
    HLFrame lineFrame = HLFrameMake(0, 0, width, self.hl_h);
    HLVerticalLine* line = [HLEasyLine verticalLineWithLineFrame:lineFrame];
    [self addSubview:line];
}

- (void)addRightLineWidth:(CGFloat)width Color:(UIColor *)color{
    HLFrame lineFrame = HLFrameMake(self.hl_w, 0, width, self.hl_h);
    HLVerticalLine* line = [HLEasyLine verticalLineWithLineFrame:lineFrame];
    [self addSubview:line];
}

- (CGFloat)hl_x{
    return self.frame.origin.x;
}

- (CGFloat)hl_y{
    return self.frame.origin.y;
}

- (CGFloat)hl_w{
    return self.frame.size.width;
}

- (CGFloat)hl_h{
    return self.frame.size.height;
}

- (void)setHl_x:(CGFloat)hl_x{
    CGRect frame = CGRectMake(hl_x, self.hl_y, self.hl_w, self.hl_h);
    self.frame = frame;
}

- (void)setHl_y:(CGFloat)hl_y{
    CGRect frame = CGRectMake(self.hl_x, hl_y, self.hl_w, self.hl_h);
    self.frame = frame;
}

- (void)setHl_w:(CGFloat)hl_w{
    CGRect frame = CGRectMake(self.hl_x, self.hl_y, hl_w, self.hl_h);
    self.frame = frame;
}

- (void)setHl_h:(CGFloat)hl_h{
    CGRect frame = CGRectMake(self.hl_x, self.hl_y, self.hl_w, hl_h);
    self.frame = frame;
}
@end
