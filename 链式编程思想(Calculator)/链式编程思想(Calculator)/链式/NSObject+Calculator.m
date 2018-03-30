//
//  NSObject+Calculator.m
//  链式编程思想(计算机)
//
//  Created by corepress on 2018/3/29.
//  Copyright © 2018年 corepress. All rights reserved.
//

#import "NSObject+Calculator.h"


@implementation NSObject (Calculator)

+ (double )mas_makeCalculator:(void(^)(Calculator *))block {
    
    Calculator *maker = [[Calculator alloc] init];
    
     block(maker);

    return maker.result;
    
}

@end
