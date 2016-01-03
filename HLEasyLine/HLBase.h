//
//  HLBase.h
//  HLEasyLineDemo
//
//  Created by HangqiLiu on 16/1/3.
//  Copyright © 2016年 HenryLio. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SINGLE_LINE_WIDTH  (1 / [UIScreen mainScreen].scale)
#define SINGLE_LINE_OFFSET ((1 / [UIScreen mainScreen].scale) / 2)

struct HLPoint{
    CGFloat x;
    CGFloat y;
};
typedef struct HLPoint HLPoint;

struct HLSize{
    CGFloat width;
    CGFloat length;
};
typedef struct HLSize HLSize;

struct HLFrame{
    HLPoint startPoint;
    HLSize  lineSize;
};
typedef struct HLFrame HLFrame;

static inline HLPoint
HLPointMake(CGFloat x,CGFloat y){
    HLPoint p; p.x = x; p.y = y; return p;
}

static inline HLSize
HLSizeMake(CGFloat width,CGFloat length){
    HLSize s; s.width = width; s.length = length; return s;
}

static inline HLFrame
HLFrameMake(CGFloat x, CGFloat y, CGFloat width, CGFloat length){
    HLPoint p = HLPointMake(x,y);
    HLSize  s = HLSizeMake(width,length);
    HLFrame f;
    f.startPoint = p;
    f.lineSize = s;
    return f;
}

static inline
