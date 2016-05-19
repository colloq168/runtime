//
//  ViewController.m
//  runtime
//
//  Created by 花菜ChrisCai on 2016/5/19.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+CCRuntime.h"
#import "CCPcerson.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    // 获取CCPerson类的所有实例变量
    
//    [self getInstanceVarList:[CCPerson class]];
    
    /**
     *  控制台输出结果
     *
     *  2016-05-19 17:04:04.301 runtime[35973:6331743] name = score,type = i
     *  2016-05-19 17:04:04.302 runtime[35973:6331743] name = height,type = d
     *  2016-05-19 17:04:04.302 runtime[35973:6331743] name = _name,type = @"NSString"
     *  2016-05-19 17:04:04.302 runtime[35973:6331743] name = _age,type = q
     *  2016-05-19 17:04:04.302 runtime[35973:6331743] name = _number,type = q
     *
     *
     *  可以通过该方法获取系统某个类的属性,然后利用KVC修改属性,
     *  下面使用该方法修改UITextField 占位文字颜色,让其出现类似高亮效果
     */
    
    // 获取UITextField的属性列表
//    [self getInstanceVarList:[UITextField class]];
    
    // 通过查找可以看见里面有个 name = _placeholderLabel < < =========== > >type = @"UITextFieldLabel"
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

    
}

@end
