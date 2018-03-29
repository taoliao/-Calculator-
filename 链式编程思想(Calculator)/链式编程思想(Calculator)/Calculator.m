//
//  Calculator.m
//  链式编程思想(计算机)
//
//  Created by corepress on 2018/3/29.
//  Copyright © 2018年 corepress. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

-(Calculator *(^)(double num))add {
    
    return  ^(double num) {
        
        self.result += num;
        
        return self;
        
    };

}

- (Calculator *(^)(double num))subtract {
    
    return ^(double num) {
      
        self.result -= num;
        
        return self;
    };
}

- (Calculator *(^)(double num))multiply {
    
    return ^(double num) {
        
        self.result  = self.result * num;
        
        return self;
    };
    
}

- (Calculator *(^)(double num))divide {
    
    return ^(double num) {
        
        self.result = self.result / num;
      
        return  self;
    };
    
}


@end
