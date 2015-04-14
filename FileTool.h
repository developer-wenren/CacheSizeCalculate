//
//  FileTool.h
//  CacheSizeCalculate
//
//  Created by zjsruxxxy3 on 15/4/14.
//  Copyright (c) 2015年 OC. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    FileSizeB = 1,
    FileSizeKB,
    FileSizeMB,
    FileSizeGB
} FileSizes;

@interface FileTool : NSObject


#pragma mark 计算所给文件或者文件夹的大小(存在误差)
/**
 *  @param singleFilePath 单个文件的路径
 *
 *  @return 单个文件大小
 */
+(NSInteger )singleFileSizeAtSinglePath:(NSString *)singleFilePath;


/**
 *  @param folderFilePath 文件夹路径
 *
 *  @return 含文件的文件夹的大小
 */
+(float)folderFileSizeAtfolderPath:(NSString *)folderFilePath;



@end
