//
//  LTKVONotifying_Person.m
//  链式编程思想(Calculator)
//
//  Created by corepress on 2018/3/30.
//  Copyright © 2018年 corepress. All rights reserved.
//

#import "LTKVONotifying_Person.h"

#import <objc/message.h>


@implementation LTKVONotifying_Person

- (void)setAge:(int)age {
    
   [super setAge:age];
    
    
   id observer =  objc_getAssociatedObject(self, @"observer");

   [observer observeValueForKeyPath:@"age" ofObject:self change:nil context:nil];
    
}





@end
