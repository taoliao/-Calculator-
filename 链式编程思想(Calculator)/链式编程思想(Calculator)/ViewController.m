//
//  ViewController.m
//  链式编程思想(Calculator)
//
//  Created by corepress on 2018/3/29.
//  Copyright © 2018年 corepress. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Calculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
   double result = [NSObject mas_makeCalculator:^(Calculator *maker) {
        
        maker.add(10.5).add(20).add(30.3).add(40);
        
        maker.subtract(20);
        
        maker.multiply(3);
        
        maker.divide(2);
        
    }];
    
     NSLog(@"%lf",result);
    
    //链式编程的特点：方法的返回值是一个block，block的参数是你想传入的值，block的返回值是方法调用者 要做的事情全部在block中处理
}




@end
