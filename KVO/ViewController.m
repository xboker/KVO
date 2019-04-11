//
//  ViewController.m
//  KVO
//
//  Created by xiekunpeng on 2019/4/11.
//  Copyright © 2019 xboker. All rights reserved.
//

#import "ViewController.h"
#import "AObject.h"
#import "AObserver.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AObject *obj = [[AObject alloc] init];
    AObserver *observer = [[AObserver alloc] init];
    ///obj添加监听者observer
    [obj addObserver:observer forKeyPath:@"count" options:NSKeyValueObservingOptionNew context:nil];
    ///通过setter方法修改count的值   可以触发KVO监听方法
    obj.count = 2;
    ///通过KVC设置值   可以触发KVO监听方法
    [obj setValue:@12 forKey:@"count"];
    ///通过成员变量赋值   不能触发KVO(控制台没有打印出13)
    [obj increaseCount1];
    ///通过成员变量赋值   手动触发KVO(控制台打印出来14)
    [obj increaseCount2];
    
    
    // Do any additional setup after loading the view.
}


@end
