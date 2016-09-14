//
//  main.m
//  NSDataprocess
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
        //audio file,text file,video file must use NSDAta class
        NSString *str = @"www.itcast.cn";
        NSError *error;
        [str writeToFile:@"/Users/weilai/Desktop/text.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
#endif
        
        
#if 0
        //write file
        NSString *path  = @"/Users/weilai/Desktop/text.txt";
        NSData *data = [NSData dataWithContentsOfFile:path];
        
        NSLog(@"data length %ld", data.length);
        
        NSString *pathto = @"/Users/weilai/Desktop/nexttext.txt";
        BOOL isWriteSuccess = [data writeToFile:pathto atomically:YES];
        if (isWriteSuccess) {
            NSLog(@"Write file ok!!");
        }
        else
        {
            NSLog(@"Write file err!");
        }
#endif
        
        //varibalbe long contennt
        NSString *str1 = @"first good things......";
        NSString *str2 = @"Secondi good thingsf....";
        NSString *str3 = @"Thired sfldsfdsfds";
        
        NSMutableData *muData = [[NSMutableData alloc] init];
        
        NSData *d1 = [str1 dataUsingEncoding:NSUTF8StringEncoding];
        NSData *d2 = [str2 dataUsingEncoding:NSUTF8StringEncoding];
        NSData *d3 = [str3 dataUsingEncoding:NSUTF8StringEncoding];
        //appendData ,add nsdata object to muData
        [muData appendData:d1];
        [muData appendData:d2];
        [muData appendData:d3];
        
        NSString *path = @"/Users/weilai/Desktop/muData.txt";
        //NSMutableData is inherited from NSData
        BOOL isWriteSuccess = [muData writeToFile:path atomically:YES];
        if (isWriteSuccess) {
            NSLog(@"Write file ok");
        }
        else
        {
            NSLog(@"Write file err");
        }
        
        
    }
    return 0;
}
