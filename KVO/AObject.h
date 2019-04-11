//
//  AObject.h
//  KVO
//  被观察者
//  Created by xiekunpeng on 2019/4/11.
//  Copyright © 2019 xboker. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AObject : NSObject

@property (nonatomic, assign) NSInteger     count;
- (void)increaseCount1;
- (void)increaseCount2;

@end

NS_ASSUME_NONNULL_END
