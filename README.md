# HLEasyLine
一个简单的画线封装，可画像素级的细线
## 封装它的原因
- 项目原因，需要在UIView或UITableViewCell中绘制一像素的细线。
- 常规的方法并不能方便地绘制像素级的细线。
- 因为苹果为了防止锯齿会将一个一像素的View放在两个像素上，然后降低颜色深度，视觉上达到一像素的效果，然而这个效果有时候并不能满足我们锱铢必较的设计师，所以有了它。

## 使用：
- **在View的四个边的某一边添加一条线**

```
#import "UIView+HLEasyLine.h"
 
- (void)addTopLineWidth:(CGFloat)width Color:(UIColor*)color;
- (void)addBottomLineWidth:(CGFloat)width Color:(UIColor*)color;
- (void)addLeftLineWidth:(CGFloat)width Color:(UIColor*)color;
- (void)addRightLineWidth:(CGFloat)width Color:(UIColor*)color;

```

- **自定义的线(分为水平方向的线和垂直方向的线)**

```
#import "HLEasyLine.h"
+ (HLVerticalLine*)verticalLineWithLineFrame:(HLFrame)lineFrame;
+ (HLVerticalLine*)verticalLine;

+ (HLHorizontalLine*)horizontalLineWithLineFrame:(HLFrame)lineFrame;
+ (HLHorizontalLine*)horizontalLine;
```

- **可以设置颜色、起点、宽度和长度**

```
#import "HLBase.h"

@interface HLBaseLine : UIView
@property (nonatomic,strong) UIColor* lineColor;
@property (nonatomic,assign) HLFrame  lineFrame;

@end
```

## 说明一下HLFrame
```
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
```
*HLFrame*是一个结构体，又包含了*startPoint(HLPoint)*和*lineSize(HLSize)*两个结构体

*startPoint(HLPoint)*是线的起点,有内联的构造函数

*lineSize(HLSize)*不同于CGSize，它的*width*和*length*分别代表线的宽度和长度，其中宽度(*width*)在使用中以像素为单位，即 ***HLFrameMake(100,0,1,200)*** 代表线的起点为(100,0),宽度为1像素，长度为200

