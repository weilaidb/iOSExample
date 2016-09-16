//
//  Person.m
//  02-集合类
//
//  Created by weilai on 16/9/14.
//  Copyright © 2016年 weilai. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)dealloc
{
    [super dealloc];
    NSLog(@"Person 被销毁了！！！")；
}

@end
