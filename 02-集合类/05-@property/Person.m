//
//  Person.m
//  02-集合类
//
//  Created by weilai on 16/9/14.
//  Copyright © 2016年 weilai. All rights reserved.
//

#import "Person.h"
#import "Car.h"

@implementation Person

- (void)dealloc
{
    [super dealloc];
    [_car release];// notice it !!! here.!!!
    
    NSLog(@"Person Destroyed!!!");
}

@end
