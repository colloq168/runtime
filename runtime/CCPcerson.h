//
//  CCPerson.h
//  runtime
//
//  Created by 花菜ChrisCai on 2016/5/19.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CCPerson : NSObject

{
    @private
    int score;
    double height;
}
/** 名称 */
@property(nonatomic, copy) NSString *name;
/** 年龄 */
@property(nonatomic, assign) NSInteger age;

    


@end
