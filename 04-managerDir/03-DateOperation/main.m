//
//  main.m
//  03-DateOperation
//
//  Created by weilai on 16/9/10.
//  Copyright © 2016年 weilai. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
      
#if 0
        //Date Class
        //1.get Date
        NSDate *date = [NSDate date];
        NSLog(@"date %@",date);
#endif
        
#if 0
        //2.compare Date
     
        NSTimeInterval secondes = 24 * 60 * 60;
        
        NSDate *now = [NSDate date];
        // simulate yestory
        NSDate *yestory = [now addTimeInterval:-secondes];
        
        //compare whether equal
        BOOL isEqaul = [now isEqualToDate:yestory];
        if (isEqaul) {
            NSLog(@"same day");
        }else
        {
            NSLog(@"not equal day");
        }
        
        NSDate *earlier = [yestory earlierDate:now];
        NSLog(@"earlier %@", earlier);
        
        NSDate *later = [yestory laterDate:now];
        NSLog(@"later %@", later);
#endif
        
#if 0
        //format date
        NSDate *date = [NSDate date];
        
        //format object
        NSDateFormatter *f = [[NSDateFormatter alloc] init];
        
        [f setDateFormat:@"yyyy-MM-dd hh:mm:ss"];//
        
        NSString *str = [f stringFromDate:date];
        NSLog(@"str %@", str);
#endif
#if 0
        //convert string to date
        NSString *str = @"2012/10/12";
        
        NSDateFormatter *f = [[NSDateFormatter alloc] init];
        [f setDateFormat:@"yyyy/MM/dd"];
        NSDate *date = [f dateFromString:str];
        NSLog(@"date %@", date);
#endif
        
        //deal zone
        NSDate *newDate = [NSDate date];
        NSLog(@"%@", newDate);
        NSDateFormatter *f = [[NSDateFormatter alloc] init];
        [f setDateFormat:@"yyyy-MM-dd hh:mm:ss"];
        
        NSString *str = [f stringFromDate:newDate];
        //set time zone diff // GTM
        [f setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
        NSLog(@"%@", str);
        
        
    }
    return 0;
}
