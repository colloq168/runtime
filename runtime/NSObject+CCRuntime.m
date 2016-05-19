//
//  NSObject+CCRuntime.m
//  runtime
//
//  Created by 花菜ChrisCai on 2016/5/19.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import "NSObject+CCRuntime.h"
#import <objc/runtime.h>
@implementation NSObject (CCRuntime)
// 交换两个方法的实现
- (void)exchangeImplementations:(Class)aClass action:(SEL)aAction ohterClass:(Class)otherClass otherAction:(SEL)otherAction;
{
    // 获取aClass类的对象方法
    Method m1 = class_getInstanceMethod(aClass, aAction);
    // 获取otherClass类的对象方法
    Method m2 = class_getInstanceMethod(otherClass, otherAction);
    
    // 开始交换方法实现
    method_exchangeImplementations(m1, m2);
    
}

- (void)getInstanceVarList:(Class)aClass;
{
    unsigned outCount = 0;
    
    // 该方法class_copyIvarList 返回一个Ivar类型的指针
    Ivar *ivar = class_copyIvarList(aClass, &outCount);
    
    
    for ( NSInteger i = 0; i < outCount; i++) {
        // 数组地址就是第0个元素的地址
        const char *name = ivar_getName(ivar[i]);
        
        const char *type = ivar_getTypeEncoding(ivar[i]);
        
        NSLog(@"name = %s < < =========== > >type = %s",name,type);
    }
}
@end
