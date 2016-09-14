//
//  main.m
//  ManageFile
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
        //1.get file
        NSString *path = @"/Users/weilai/Desktop/text.txt";
        NSData *data = [NSData dataWithContentsOfFile:path];
        NSLog(@"File size %ld",data.length);
        
        //2.create file
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSString *pathto = @"/Users/weilai/Desktop/text_bak.txt";
        BOOL isCreateSuccess = [fileManager createFileAtPath:pathto contents:data attributes:nil];
        if (isCreateSuccess) {
            NSLog(@"Create file ok!!!");
        }else
        {
            NSLog(@"create file err!!");
        }
#endif
        
#if 0
        //3.move file
        NSFileManager *fileManger = [NSFileManager defaultManager];
        NSString *path = @"/Users/weilai/Desktop/test.txt";
        NSString *pathTo = @"/Users/weilai/Desktop/text_rename.txt";
        NSError *error;
        BOOL isMoveSuccess = [fileManger moveItemAtPath:path toPath:pathTo error:&error];
        if (isMoveSuccess) {
            NSLog(@"Move file ok!");
        }
        else
        {
            NSLog(@"err %@", error);
        }
#endif
        
        //4.delete file
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSString *path = @"/Users/weilai/Desktop/text_bak.txt";
        NSError *error;
        BOOL isRemoveSuccess = [fileManager removeItemAtPath:path error:&error];
        if (isRemoveSuccess) {
            NSLog(@"Remove file ok!!");
        }
        else
        {
            NSLog(@"error %@", error);
        }
        
        
        
    }
    return 0;
}
