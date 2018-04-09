//
//  TLRegularLabel.m
//  链式编程思想(Calculator)
//
//  Created by corepress on 2018/4/9.
//  Copyright © 2018年 corepress. All rights reserved.
//

#import "TLRegularLabel.h"

@implementation TLRegularLabel

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        self.maskLayer = [CAShapeLayer layer];
        
        self.layer.mask = self.maskLayer;

        self.borderPath = [UIBezierPath bezierPath];
    }
    return self;
}

//使用CAShapeLayer联合UIBezierPath画不规则的layer作为label.layer的mask，需要清楚的了解path的绘制路径，一步一步绘制才不会出错
- (void)layoutSubviews {
    [super layoutSubviews];
    // 遮罩层frame
//    self.maskLayer.frame = self.bounds;
    
    //设置path的起点
    [self.borderPath moveToPoint:CGPointMake(0, 10)];
    //左上角的圆角
    [self.borderPath addQuadCurveToPoint:CGPointMake(10, 0) controlPoint:CGPointMake(0, 0)];
    
    //直线
    [self.borderPath addLineToPoint:CGPointMake(30, 0)];
    
    [self.borderPath addLineToPoint:CGPointMake(30, 0)];
    [self.borderPath addLineToPoint:CGPointMake(35, 5)];
    [self.borderPath addLineToPoint:CGPointMake(40, 0)];
    
      //直线 到右上角
    [self.borderPath addLineToPoint:CGPointMake(self.bounds.size.width-10, 0)];
    
      //右上角的圆角
    [self.borderPath addQuadCurveToPoint:CGPointMake(self.bounds.size.width, 10) controlPoint:CGPointMake(self.bounds.size.width, 0)];
    
    // 直线，到右下角
    [self.borderPath addLineToPoint:CGPointMake(self.bounds.size.width, self.bounds.size.height - 10)];
    
      //右下角的圆角
     [self.borderPath addQuadCurveToPoint:CGPointMake(self.bounds.size.width-10, self.bounds.size.height) controlPoint:CGPointMake(self.bounds.size.width, self.bounds.size.height)];
    
    [self.borderPath addLineToPoint:CGPointMake(self.bounds.size.width/2+5, self.bounds.size.height)];
    [self.borderPath addLineToPoint:CGPointMake(self.bounds.size.width/2, self.bounds.size.height-5)];
    [self.borderPath addLineToPoint:CGPointMake(self.bounds.size.width/2 - 5, self.bounds.size.height)];
    
    // 直线，到左下角
    [self.borderPath addLineToPoint:CGPointMake(10, self.bounds.size.height)];
    
      //左下角的圆角
  [self.borderPath addQuadCurveToPoint:CGPointMake(0, self.bounds.size.height-10) controlPoint:CGPointMake(0, self.bounds.size.height)];
    
    // 直线，回到起点
    [self.borderPath addLineToPoint:CGPointMake(0, 10)];

    self.maskLayer.path = self.borderPath.CGPath;
    
}


@end
