//
//  TLRegularLabel.h
//  链式编程思想(Calculator)
//
//  Created by corepress on 2018/4/9.
//  Copyright © 2018年 corepress. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TLRegularLabel : UILabel

/** 遮罩 */
@property (nonatomic, strong) CAShapeLayer *maskLayer;
/** 路径 */
@property (nonatomic, strong) UIBezierPath *borderPath;

@end
