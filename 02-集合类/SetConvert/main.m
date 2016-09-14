//
//  main.m
//  SetConvert
//
//  Created by weilai on 16/9/10.
//  Copyright © 2016年 weilai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *array1 = [NSArray arrayWithObjects:@"one", @"two", @"three", nil];
        NSLog(@"array1 %@",array1);
        
        
        NSNumber *number = [NSNumber numberWithInt:10];
        NSArray *array2 = [[NSArray alloc] initWithObjects:@"one",@"two", number, nil];
        NSLog(@"array2 %@", array2);
        
        
        NSArray *a1 = [[NSArray alloc] initWithObjects:@"one",@"two",@"three", nil];
        NSArray *a2 = [[NSArray alloc] initWithObjects:@"1",@"2",@"3", nil];
        NSArray *a3 = [[NSArray alloc] initWithObjects:a1, a2, nil];
        
        NSLog(@"a3 %@", a3);
        
        
        //Stonre Selfdefne object
        Person *p1 = [[Person alloc] initWithName:@"xiaoweilai" andAge:18];
        Person *p2 = [[Person alloc] initWithName:@"hehe" andAge:12];
        Person *p3 = [[Person alloc] initWithName:@"text" andAge:23];
        
        NSArray *array4 = [[NSArray alloc] initWithObjects:p1,p2,p3, nil];
        NSLog(@"array4 %@", array4);
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSString *str = nil; //not store nil to the array
        NSArray *array5 = [[NSArray alloc] initWithObjects:@"1", str,[NSNumber numberWithInt:23435], nil];
        NSLog(@"array5 %@", array5);
        
        
        NSArray *karray = @[@"a", @"b", @"c"];
        NSLog(@"karray %@",karray);
        
        
    }
    return 0;
}
