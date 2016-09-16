//
//  Chief.h
//  02-集合类
//
//  Created by weilai on 16/9/16.
//  Copyright © 2016年 weilai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Food.h"
@interface Chief : NSObject

- (Food *)makeFood;

+ (Chief *)chief;

@end
