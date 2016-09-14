//
//  main.m
//  05-@property
//
//  Created by weilai on 16/9/14.
//  Copyright © 2016年 weilai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Person *p  = [[Person alloc] init];
        
        Car *car = [[Car alloc] init];
        [p setCar:car];
        
        [car release];

        
        
        Car *car2 = [[Car alloc] init];
        [p setCar:car2];
        
        [car2 release];
        
        
        
        
//        p.height = 10;
        [p abc:100];
//        int b = [p shijiene];
        p.height = 3434;
        NSLog(@"he %d", p.height);
        
        
        [p isDeid:YES];
        [p isDeid];
        p.isDeid = NO;
        
        BOOL isResult = [p isDeid];
        NSLog(@"isResult %d", isResult);
        
        [p release];
        
    }
    return 0;
}
