//
//  main.m
//  fileattr
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
        // create one file
        NSString *str = @"www.itcast.cn";
        NSError *error;
        
        BOOL isWriteSuccess = [str writeToFile:@"/Users/weilai/Desktop/test.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
        if (isWriteSuccess) {
            NSLog(@"create success");
        }else
        {
            NSLog(@"error %@", error);
        }
#endif
        
        //get file attribute ,eg size ,create date
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSString *path = @"/Users/weilai/Desktop/text.txt";
        NSError *error;
        NSDictionary *dic = [fileManager attributesOfItemAtPath:path error:&error];
        if (error != nil) {
            NSLog(@"error %@", error);
        }
        
        NSLog(@"dic %@", dic);
        
        if (error == nil) {
            NSDate *date = [dic objectForKey:NSFileCreationDate];
            NSLog(@"date %@", date);
            NSString *size = [dic objectForKey:NSFileSize];
            NSLog(@"size %@", size);
        }
        
        
        
        
        
        
        
#if 0
        //print directory content
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSString *path = @"/Users/weilai/Desktop";
        NSError *error;
        
        NSArray *array = [fileManager contentsOfDirectoryAtPath:path error:&error];
        NSLog(@"array %@", array);

        
        

        //print all subdirectory content
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSString *path = @"/Users/weilai/Desktop";
        NSError *error;
        
        NSArray *array = [fileManager subpathsOfDirectoryAtPath:path error:&error];
        NSLog(@"array %@", array);
#endif
    }
    return 0;
}









