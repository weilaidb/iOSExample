//
//  main.m
//  memtest
//
//  Created by weilai on 16/9/12.
//  Copyright © 2016年 weilai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Person *p = [[Person alloc] init];
        
      //  NSUInteger i = p.retainCount;
        NSLog(@"i %lu", p.retainCount);
        
        
        Car *c1 = [[Car alloc]init];
        c1.speed = 100;
        [p setCar:c1];
        
        [p drive];
        
        [c1 release];
        
        Car *c2 = [[Car alloc] init];
        c2.speed = 123;
        
        [p setCar:c2];
        [p drive];
        
        [c2 release];
        
        
        
        

        NSLog(@"i %lu", p.retainCount);
        [p release];
        p = nil;
        
        
        
        //p.retainCount
        
    }
    return 0;
}
