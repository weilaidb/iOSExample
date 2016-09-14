//
//  main.m
//  02-集合类
//
//  Created by weilai on 16/9/10.
//  Copyright © 2016年 weilai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Person *p = [[Person alloc] init];
        
        NSMutableArray *array = [[NSMutableArray alloc] init];
        [array addObject:p];
        
        [array removeObject:p];
        
        p = nil;
        NSLog(@"add p and make p as nil");
    }
    return 0;
}
