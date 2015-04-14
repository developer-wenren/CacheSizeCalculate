//
//  FileTool.m
//  CacheSizeCalculate
//
//  Created by zjsruxxxy3 on 15/4/14.
//  Copyright (c) 2015年 OC. All rights reserved.
//

#import "FileTool.h"


@implementation FileTool


+(NSInteger)singleFileSizeAtSinglePath:(NSString *)singleFilePath
{
    NSFileManager *manager = [[NSFileManager alloc]init];
    
    if ([manager fileExistsAtPath:singleFilePath])
    {
        NSError *error = [[NSError alloc]init];
        
        return [[[manager attributesOfItemAtPath:singleFilePath
                                           error:&error]
                                    objectForKey:NSFileSize]integerValue];
        
    }
    
    return 0;
    
}

+(float)folderFileSizeAtfolderPath:(NSString *)folderFilePath
{
    NSFileManager *manager = [[NSFileManager alloc]init];
    
    NSError *error = [[NSError alloc]init];
    
    NSArray *subFiles = [manager subpathsOfDirectoryAtPath:folderFilePath
                                                     error:&error];
    
    __block NSInteger b = 0;
    
    float c = 0;
    
    __block int tag = 0;
    
    [subFiles enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        
         b+= [FileTool singleFileSizeAtSinglePath:[folderFilePath stringByAppendingPathComponent:obj]];
        
        
    }];
    
    while (b/1024 >0)
    {
        c = b%1024*.001;
        
        b/=1024;
        
        tag++;
        
    }
    
    NSString *string;
    
    switch (tag)
    {
        case FileSizeB :
            string = @"B";//b
            break;
        case FileSizeKB:
            string = @"K";//k
            break;
        case FileSizeMB:
            string = @"M";//m
            break;
        case FileSizeGB:
            string = @"G";//g
            break;
            
        default:
            break;
    }

    return (b+c);
    
}
@end
