//
//  Person.h
//  02-集合类
//
//  Created by weilai on 16/9/10.
//  Copyright © 2016年 weilai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic ,strong)NSString *name;
@property (nonatomic, assign)int age;
- (id)initWithName:(NSString *)name andAge:(int)age;

@end
