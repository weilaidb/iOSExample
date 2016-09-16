//
//  Chief.m
//  02-集合类
//
//  Created by weilai on 16/9/16.
//  Copyright © 2016年 weilai. All rights reserved.
//

#import "Chief.h"

@implementation Chief

- (void)dealloc
{
    [super dealloc];
    NSLog(@"厨师被销毁了");
}

- (Food *)makeFood
{
    Food *food = nil;
    
    food = [[Food alloc] init];
    food.name = @"some eating";
    
 //   [food release];
    [food autorelease];
    
    return food;
}

+ (Chief *)chief
{
    /*
    Chief *chi = nil;
    chi = [[Chief alloc] init];
    
    [chi autorelease];
    
    return chi;
    
    */
     
     
     
    Chief *chi = [[self alloc] init];
    return [chi autorelease];
}

@end
