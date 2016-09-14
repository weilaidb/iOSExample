//
//  Person.m
//  02-集合类
//
//  Created by weilai on 16/9/12.
//  Copyright © 2016年 weilai. All rights reserved.
//

#import "Person.h"

@implementation Person
- (id)initWithName:(NSString *)name andAge:(int)age
{
    if (self = [super init])
    {
        _name = name;
        _age = age;
        
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"age = %d name = %@", _age,_name];
}

- (void)dealloc
{
    [super dealloc];
    [_car release];
    NSLog(@"Person 被销毁了");
}

- (void)setName:(NSString *)name
{
    if (_name != name) {
        [_name release];
        _name = [name retain];
    }
}

- (NSString *)name
{
    return _name;
}

- (void)setCar:(Car *)car
{
    if (_car != car) {
        [_car release];
        _car = [car retain];
    }
}

-(Car *)car
{
    return _car;
}

- (void)drive
{
    [_car run];
}

@end
