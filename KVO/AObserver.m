//
//  AObserver.m
//  KVO
//
//  Created by xiekunpeng on 2019/4/11.
//  Copyright © 2019 xboker. All rights reserved.
//

#import "AObserver.h"
#import "AObject.h"

@implementation AObserver

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    ///判断被观察对象是否是 "AObject"  且 keyPath观察的是"count"
    if ([object isKindOfClass:[AObject class]] && [keyPath isEqualToString:@"count"]) {
        NSLog(@"Count的新值为: %@", [change valueForKey:NSKeyValueChangeNewKey]);
    }
    
}


@end
