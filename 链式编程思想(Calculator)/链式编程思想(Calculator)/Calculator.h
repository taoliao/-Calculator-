//
//  Calculator.h
//  链式编程思想(计算机)
//
//  Created by corepress on 2018/3/29.
//  Copyright © 2018年 corepress. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

- (Calculator *(^)(double num))add;

- (Calculator *(^)(double num))subtract;

- (Calculator *(^)(double num))multiply;

- (Calculator *(^)(double num))divide;

@property(nonatomic,assign) double result;

@end
