//
//  CCTextField.m
//  runtime
//
//  Created by 花菜ChrisCai on 2016/5/19.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import "CCTextField.h"

@implementation CCTextField

#pragma mark -
#pragma mark - 提供两种初始化方法供外界使用,不论通过XIB/SB 还是纯代码创建都是一样的
- (void)awakeFromNib
{
    [self setup];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}


- (void)setup
{
    // 设置聚焦时光标颜色
    self.tintColor = self.textColor;
    
    // 默认不是第一响应者
    [self resignFirstResponder];
}

/**  利用runtime知道UITextField 有_placeholderLabel ,利用KVC修改其属性,完成效果  */



/**
 *  文本框获取焦点
 *
 */
- (BOOL)becomeFirstResponder
{
    // 修改占位文字颜色
    [self setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
    
    return  [super becomeFirstResponder];
}

/**
 *  文本框失去焦点时调用
 *
 */
- (BOOL)resignFirstResponder
{
    // 修改占位文字颜色
    [self setValue:[UIColor grayColor] forKeyPath:@"_placeholderLabel.textColor"];
    return [super resignFirstResponder];
}

@end
