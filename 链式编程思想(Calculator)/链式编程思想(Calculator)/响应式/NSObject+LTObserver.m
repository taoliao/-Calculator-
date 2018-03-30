//
//  NSObject+LTObserver.m
//  链式编程思想(Calculator)
//
//  Created by corepress on 2018/3/30.
//  Copyright © 2018年 corepress. All rights reserved.
//

#import "NSObject+LTObserver.h"
#import <objc/message.h>
#import "LTKVONotifying_Person.h"

@implementation NSObject (LTObserver)

- (void)lt_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(nullable void *)context {
    
    //kvo 的本质是监听是否调用对象的set方法
    //1.创建对象NSKVONotifying_Person
    //2.改变对象的指针，指向NSKVONotifying_Person
    //3.添加对象observer属性 属性就是监听者（viewcontroller）
    //子类重写set方法，调用[super setAge:age]; 取出observer属性调用属性更改方法
    
    object_setClass(self, [LTKVONotifying_Person class]);
    
    objc_setAssociatedObject(self, @"observer", observer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    
}

@end
