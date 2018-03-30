//
//  NSObject+LTObserver.h
//  链式编程思想(Calculator)
//
//  Created by corepress on 2018/3/30.
//  Copyright © 2018年 corepress. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (LTObserver)

- (void)lt_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(nullable void *)context;



@end
