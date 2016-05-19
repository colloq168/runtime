//
//  NSObject+CCRuntime.h
//  runtime
//
//  Created by 花菜ChrisCai on 2016/5/19.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (CCRuntime)
/**
 *  交换两个方法的实现
 *
 *  @param aClass      需要交换的类
 *  @param aAction     需要交换的方法
 *  @param otherClass  另外一个类
 *  @param otherAction 需要交换的方法
 */
- (void)exchangeImplementations:(Class)aClass action:(SEL)aAction ohterClass:(Class)otherClass otherAction:(SEL)otherAction;
/**
 *  获取一个类的所有实例变量
 *
 *  @param class 需要或取的类
 */
- (void)getInstanceVarList:(Class)aClass;
@end
