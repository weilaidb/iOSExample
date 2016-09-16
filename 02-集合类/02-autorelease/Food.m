//
//  Food.m
//  02-集合类
//
//  Created by weilai on 16/9/16.
//  Copyright © 2016年 weilai. All rights reserved.
//

#import "Food.h"

@implementation Food
- (void) dealloc
{
    [super dealloc];
    [_name release];
    NSLog(@"Food被销毁了");
    
}

@end
