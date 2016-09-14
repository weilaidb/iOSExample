//
//  main.m
//  04-managerDir
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
        
        // 1. create directory
        NSFileManager *fileManger = [NSFileManager defaultManager];
        NSString *path = @"/Users/weilai/Desktop/aaa/bbb/ccc/ddd";
        NSError *error;
        BOOL isCreateSuccess = [fileManger createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:&error];
        if (isCreateSuccess) {
            NSLog(@"create directory success!!!");
        }else
        {
            NSLog(@"create directory err %@", error);
        }
        
        #endif
        
        
        
#if 0
        //2.Move Directory
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSString *path = @"/Users/weilai/Desktop/myfolder";
        NSString *pathto = @"/Users/weilai/Desktop/testfolder"; // testfolder should not exit before!!!
        NSError *error;
        BOOL isMoveSuccess = [fileManager moveItemAtPath:path toPath:pathto error:&error];
        if (isMoveSuccess) {
            NSLog(@"Move Directory success");
        }else{
            NSLog(@"Move Directroy err %@", error);
        }
        
#endif
      
#if 0
        //3.delete directory
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSString *path = @"/Users/weilai/Desktop/newfolder";
        NSError *error;
        
        BOOL isRemoveSuccess = [fileManager removeItemAtPath:path error:&error];
        if (isRemoveSuccess) {
            NSLog(@"delete directory ok!!");
        }
        else
        {
            NSLog(@"error %@", error);
        }
#endif
        
        //copy directory
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSString *path = @"/Users/weilai/Desktop/ios";
        NSString *pathto = @"/Users/weilai/Desktop/ios.bak";
        NSError *error;
        
        BOOL isCopySuccess = [fileManager copyItemAtPath:path toPath:pathto error:&error];
        if (isCopySuccess) {
            NSLog(@"Copy directory success!!");
        }
        else
        {
            NSLog(@"err %@", error);
        }
        
        
    }
    return 0;
}
