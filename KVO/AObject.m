//
//  AObject.m
//  KVO
//
//  Created by xiekunpeng on 2019/4/11.
//  Copyright © 2019 xboker. All rights reserved.
//

#import "AObject.h"

@implementation AObject

- (instancetype)init {
    if (self = [super init]) {
        _count = 0;
    }
    return  self;
}


///单纯的成员变量赋值, 无法触发KVO
- (void)increaseCount1 {
    _count ++;
}

///成员变量赋值+手动触发KVO
- (void)increaseCount2 {
    ///通过这两个方法可以手动触发KVO
    [self willChangeValueForKey:@"count"];
    _count ++;
    [self didChangeValueForKey:@"count"];
}


 

@end
