//
//  Person.h
//  02-集合类
//
//  Created by weilai on 16/9/12.
//  Copyright © 2016年 weilai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

@interface Person : NSObject
{
    Car * _car;
    NSString * _name;
}
@property (nonatomic ,strong)NSString *name;
@property (nonatomic, assign)int age;
//@property Car car;
- (id)initWithName:(NSString *)name andAge:(int)age;

- (void)setName:(NSString *)name;
- (NSString *)name;

- (void)setCar:(Car *)car;
-(Car *)car;

- (void)drive;

@end
