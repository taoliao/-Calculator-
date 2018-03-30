//
//  NSObject+Calculator.h
//  链式编程思想(计算机)
//
//  Created by corepress on 2018/3/29.
//  Copyright © 2018年 corepress. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Calculator.h"

@interface NSObject (Calculator)

+ (double )mas_makeCalculator:(void(^)(Calculator *))block;


@end
