//
//  ViewController.m
//  链式编程思想(Calculator)
//
//  Created by corepress on 2018/3/29.
//  Copyright © 2018年 corepress. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Calculator.h"
#import "Calculator.h"

#import "Person.h"
#import "NSObject+LTObserver.h"
#import "LTKVONotifying_Person.h"

#import "TLRegularLabel.h"

@interface ViewController ()

@property(nonatomic,strong) Person *p;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    TLRegularLabel *label = [[TLRegularLabel alloc] initWithFrame:CGRectMake(90, 200, 200, 40)];
    label.text = @"这是一个不规则label";
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor redColor];
    label.textColor = [UIColor whiteColor];
    label.font = [UIFont boldSystemFontOfSize:16];
    [self.view addSubview:label];

    


   double result = [NSObject mas_makeCalculator:^(Calculator *maker) {
        
        maker.add(10.5).add(20).add(30.3).add(40);
        
        maker.subtract(20);
        
        maker.multiply(3);
        
        maker.divide(2);
        
    }];
    
     NSLog(@"%lf",result);
    //链式编程的特点：方法的返回值是一个block，block的参数是你想传入的值，block的返回值是方法调用者 要做的事情全部在block中处理
    
    Person *p = [[Person alloc] init];
    
    
    _p = p;
    
    [p lt_addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew context:nil];
    
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
        NSLog(@"%d",_p.age);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
       _p.age++ ;
}


@end
