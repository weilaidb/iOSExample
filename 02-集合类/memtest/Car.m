//
//  Car.m
//  02-集合类
//
//  Created by weilai on 16/9/14.
//  Copyright © 2016年 weilai. All rights reserved.
//

#import "Car.h"

@implementation Car

-(void)dealloc
{
    [super dealloc];
    NSLog(@"Car Destroy!!, %d Speed", _speed);
}

-(void)run
{
    NSLog(@"Car Running");
}
@end
