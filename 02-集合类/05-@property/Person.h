//
//  Person.h
//  02-集合类
//
//  Created by weilai on 16/9/14.
//  Copyright © 2016年 weilai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

@interface Person : NSObject



//@property Car *car;
@property (nonatomic ,retain)Car *car;
@property (nonatomic ,retain)NSString *name;
@property (nonatomic ,assign)int age;
@property (nonatomic ,assign)int weight;
@property (nonatomic, readonly)int idCard;
@property (nonatomic, assign, setter=abc:)int height;
@property (nonatomic,assign,setter=isDeid:,getter=isDeid)
BOOL isDeid;

//-(void)isDeid;
//@property (

//@property classify four
/*
 1. with set method
 retain: relating mem manage set method
 assain: direct assign
 copy:

 
 2.multi thread
 nonatomic:不生成多线程管代码，使用这个就可以了
 atomic:生成多线程管代码
 
 */

//-（void)setHeight:(int)height;
-(int)height;



/*
#if 0
- (void)setCar:(Car *)car
{
    _car = car;
}

-(Car *)car
{
    return _car;
}

#endif
 
 */

@end
