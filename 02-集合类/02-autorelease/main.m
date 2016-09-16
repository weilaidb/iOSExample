//
//  main.m
//  02-autorelease
//
//  Created by weilai on 16/9/16.
//  Copyright © 2016年 weilai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Chief.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        /*
        // insert code here...
        NSLog(@"Hello, World!");
        
        Chief *chi = [[Chief alloc] init];
        
        Food *food = [chi makeFood];
        
        NSLog(@"%@", food.name);
        
        
        [chi release];
        */
        
        
        
        Chief *chi = [Chief chief];
        Food *food = [chi makeFood];
        NSLog(@"%@", food.name);
        
        
        NSString *name = [NSString stringWithFormat:@"%@", @"lalalala"];//all are autorelease
        
        NSLog(@"name: %@", name);
        
    }
    return 0;
}
